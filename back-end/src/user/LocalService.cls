/// EPCIS.LocalService
Class EPCIS.LocalService Extends %SOAP.WebService [ Language = objectscript, ProcedureBlock ]
{

/// Name of the WebService.
Parameter SERVICENAME = "LocalService";

/// TODO: change this to actual SOAP namespace.
/// SOAP Namespace for the WebService
Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

/// Namespaces of referenced classes will be used in the WSDL.
Parameter USECLASSNAMESPACES = 1;

/// TODO: add arguments and implementation.
/// Capture
/// Return value is %Status, but used to pass back the identifer
/// which is need by the PubSub mechanism
Method Capture(pDocument As EPCIS.epcis.EPCISDocumentType) As %Status [ WebMethod ]
{

	set tSC=$$$OK
	// If this is an ADT event, need to differentiate between PID:3 and PV1:19 gsrn
	if (pDocument.EPCISBody.EventList.ObjectEvent.Count()>0) {
		set epcCount=pDocument.EPCISBody.EventList.ObjectEvent.GetAt(1).epcList.Count()
		for i=1:1:epcCount {
			quit:pDocument.EPCISBody.EventList.ObjectEvent.GetAt(1).epcList.GetAt(i).content'["gsrn"
			if (i=epcCount) {
				set pDocument.EPCISBody.EventList.ObjectEvent.GetAt(1).epcList.GetAt(i).role="8019"

			}
			else {
				set pDocument.EPCISBody.EventList.ObjectEvent.GetAt(1).epcList.GetAt(i).role="8018"
			}
		}
	}
	set tSC=pDocument.%Save()
	if $$$ISERR(tSC) return tSC
	set tId=pDocument.%Id()
	Return tId
}

/*
	Scenario 1:  Patient Visit Status
	
	ADTs have been turned into ObjectEventType.  The EPCs will be:
		
		1.  Hospital Number PID:3 - GSRN (EPCIS role 8018)
		2.  NHS Number (if present) PID:3 - GSRN (EPCIS role 8018)
	// deprecated	3.  Visit Number PV1:19 - EPCIS role 8019 
	// deprecated	3.  Visit Number PV1:19 - SRIN (EPCIS role 8019)
		
	// deprecated Therefore the list count will be 2 or 3.  The last item will be the PV1:19.
	
	The list count will be 1 or 2.
	
	// deprecated / This implementation has changed the schema so that the class EPCIS.epcglobal.EPC also has the
	property role.
	
	// deprecated This is necessary because the GSRN values may overlap between old hospital numbers and patient
	visit numbers. /
	
	The RESTful EPCIS API Specification supports many parameters, but for Scenario 1, they are:
	
		0.  transactions (comma separated list) - mandatory (if no epcs)
		1.  epcs (comma separated list) - mandatory (if no transactions)
		2.  type (ObjectEvent, AggregationEvent) - default of ObjectEvent 
		3.  location - optional
		4.	time - optional
		5.	step - optional
		
	The query will only return ADT events associated with a patient visit.  It may be that only the
	last event is required.
	
	// deprecated / epcs must contain the patient visit gsrn
	
	// transaction query
	
	select ObjectEventType from EPCIS_epcis.BusinessTransactionType, EPCIS_epcis.ObjectEventType_businessTransactionList 
	where 
	"content"='urn:epcglobal:cbv:bt:5055208400003:3573274'
	and bizTransactionList=EPCIS_epcis.BusinessTransactionType.ID
	
	// patient query
	
	select ObjectEventType from EPCIS_epcglobal.EPC, EPCIS_epcis.ObjectEventType_epcList where 
	"content"='urn:epc:id:gsrn:50552084.0000000003' and bizLocation_id %STARTSWITH :location
	and epcList=EPCIS_epcglobal.EPC.ID
	
	Scenario 2:  TTA Event Status
	
	Parameters:
	
		1.  epcs (should only be one) - mandatory
		?
		
*/

/*
Ignore the above.  This is subject to more change.  Keeping for history.
*/

/*
Currently supported parameters (equality only)
epcs
location
transactions
inpatientSpellId (+ location [required])
destination ( assumes date range of T and T-1 )
*/
Method EventQuery(params As %ListOfObjects(ELEMENTTYPE="EPCIS.epcisq.QueryParam",XMLITEMNAME="QueryParam",XMLNAME="QueryParams",REQUIRED=1)) As EPCIS.EventQueryResponse [ WebMethod ]
{
	set tSC=$$$OK
	set tSC=..%AddEnvelopeNamespace("http://epcis.gs1uk.org/nhs/","nhs")
	set objs=##class(EPCIS.EventQueryResponse).%New()

	k ^DEBUG
	set paramCount=params.Count()
	
	kill ^params
	// change this to params before deployment
	for i=1:1:paramCount {
		set name=params.GetAt(i).name
		set ^params("param",name)=params.GetAt(i).value
	}
	set epcs=$get(^params("param","epcs"))
	set location=$get(^params("param","location"))
	set transactions=$get(^params("param","transactions"))
	set inpatientSpellId=$get(^params("param","inpatientSpellId"))
	set destination=$get(^params("param","destination"))
	
	// destination ( for T and T-1 )
	kill id
	/*
	if (destination'="") {
		set sql="select ID from EPCIS_epcis.ObjectEventType where extension_destinationList [ "_destination_" and (eventTime %STARTSWITH '"_$zd($h,3)_"' or eventTime %STARTSWITH '"_$zd(+$h-1,3)_"')"
		set ^DEBUG=sql
		set st=##class(%SQL.Statement).%New()
		set tSC=st.%Prepare(sql)
		if $$$ISOK(tSC) {
			set rs=st.%Execute()
			if (rs.%SQLCODE=0) {
				while (rs.%Next()'=0) {
					set id($increment(id))=rs.%Get("ID")
				}
				for i=1:1:$get(id) {
					set eventId=id(i)
					&sql(select id into :docId from EPCIS_epcis.EPCISDocumentType where EPCISBody_EventList_ObjectEvent [ :eventId)
					set obj=##class(EPCIS.epcis.EPCISDocumentType).%OpenId(docId)
					do objs.Document.Insert(obj)
				}
				merge ^DEBUG("id")=id
			}
		}
	}
	*/
	// transactions
	
	if (transactions'="") {
		set trCount=$length(transactions,",")
		
		// just one transaction for now
		
		set sql="select ID from EPCIS_epcis.BusinessTransactionType"
		set sql=sql_" where content="_transactions
		
		set ^DEBUG=sql
		set st=##class(%SQL.Statement).%New()
		set tSC=st.%Prepare(sql)
		set ^DEBUG("prepare") = tSC
		if $$$ISOK(tSC) {
			set rs=st.%Execute()
			set ^DEBUG("rs")=rs
			set ^DEBUG("sqlcode")= rs.%SQLCODE
			if (rs.%SQLCODE=0) {
			while (rs.%Next()'=0) {
				// Going straight to global.
				set id($increment(id))=$order(^EPCIS.epcis.TransactionEv1BI("bizTransactionListIndex",rs.%GetData(1),""))
			}
			}
		}
		merge ^DEBUG("id")=id
		
		for i=1:1:$get(id) {
			set eventId=id(i)
			&sql(select id into :docId from EPCIS_epcis.EPCISDocumentType where EPCISBody_EventList_TransactionEvent [ :eventId)
			set obj=##class(EPCIS.epcis.EPCISDocumentType).%OpenId(docId)
			
			do objs.Document.Insert(obj)
		}
	}
	// epcs and location
	
	if (epcs'="")&&(location'="") {
		set epcCount=$length(epcs,",")
		/*
		set sql="select id from EPCIS_epcis.ObjectEventType where "
		for i=1:1:epcCount {
			set epc(i)=$piece(epcs,",",i)(
			if i>1 set sql=sql_" & "
			set sql=sql_"epcList LIKE '%"_epc(i)_"%'"
			if i=epcCount set sql=sql_" & "
		}
		*/
		
		// we are assuming only one epc 
		// this is the query for sscc
		if (epcs["sscc") {
			set sql="select ID from EPCIS_epcglobal.EPC"
			set sql=sql_" where content="_epcs
		}
		set step=$get(^params("param","step"))
		//if step="" set step = "urn:epcglobal:cbv:bizstep:departing"
		//if step'="" set sql=sql _ "bizstep = '"_step_"'"
		
		set time=$get(^params("param","time"))
		/*
		if time'="" {
			set sql=sql _ " & eventTime %STARTSWITH '"_time_"'"
		}
		*/
		set ^DEBUG=sql
		set st=##class(%SQL.Statement).%New()
		set tSC=st.%Prepare(sql)
		if $$$ISOK(tSC) {
			set rs=st.%Execute()
			if (rs.%SQLCODE=0) {
			while (rs.%Next()'=0) {
				// Going straight to global.
				set id($increment(id))=$order(^EPCIS.epcis.EPCISEventTypeI("epcListIndex",rs.%GetData(1),""))
			}
			}
		}
		merge ^DEBUG("id")=id
		// deprecated
		// The assumption will be that PatientVisit Ids across sites will not produce
		// a huge number of rows.  If rolled out nationally, it would be ~200 rows.
		// To avoid opening up 200 objects, another query might be required
		// deprecated to here
		
		for i=1:1:$get(id) {
			set eventId=id(i)
			//&sql(select id into :docId from EPCIS_epcis.EPCISDocumentType where $extract(%EXTERNAL(EPCISBody_EventList_ObjectEvent),3,$length(EPCISBody_EventList_ObjectEvent)) = :eventId)

			&sql(select id into :docId from EPCIS_epcis.EPCISDocumentType where EPCISBody_EventList_ObjectEvent [ :eventId)
			set obj=##class(EPCIS.epcis.EPCISDocumentType).%OpenId(docId)
			//if $piece(obj.EPCISBody.EventList.ObjectEvent.GetAt(1).bizLocation.id,".") = $piece(location,".")
			//{
					do objs.Document.Insert(obj)
			//}
		}
	}
	// epcs and location
	
	if (inpatientSpellId'="") {

	/*
	select id from EPCIS_epcis.ObjectEventType where for some %element(_any) (%VALUE= '<nhs:inpatientSpellId>543210</nhs:inpatientSpellId>')
	*/		
		// get rid of single ' 
		set inpatientSpellId=$tr(inpatientSpellId,"'","")
		set sql="select id from EPCIS_epcis.ObjectEventType where for some %element(_any) (%VALUE= '<nhs:inpatientSpellId>"_inpatientSpellId_"</nhs:inpatientSpellId>')"
		set ^DEBUG=sql
		set st=##class(%SQL.Statement).%New()
		set tSC=st.%Prepare(sql)
		if $$$ISOK(tSC) {
			set rs=st.%Execute()
			if (rs.%SQLCODE=0) {
			while (rs.%Next()'=0) {
				
				set id($increment(id))=rs.%GetData(1)
				
			
			}
			}
		}
		merge ^DEBUG("id")=id
		// deprecated
		// The assumption will be that PatientVisit Ids across sites will not produce
		// a huge number of rows.  If rolled out nationally, it would be ~200 rows.
		// To avoid opening up 200 objects, another query might be required
		// deprecated to here
		
		for i=1:1:$get(id) {
			set eventId=id(i)
			&sql(select id into :docId from EPCIS_epcis.EPCISDocumentType where EPCISBody_EventList_ObjectEvent [ :eventId)
			set obj=##class(EPCIS.epcis.EPCISDocumentType).%OpenId(docId)
			set ^DEBUG("obj",i)=obj
			
			// need to care about location
			
			//if $piece(obj.EPCISBody.EventList.ObjectEvent.GetAt(1).bizLocation.id,".") = $piece(location,".")
			//{
				// for the demo, we are skipping the accepting bizStep	
				//if objs.Document.GetAt(1).EPCISBody.EventList.ObjectEvent.GetAt(1).bizStep'="urn:epcglobal:cbv:bizstep:accepting"  
				if (id>1)&&(i>1) do objs.Document.Insert(obj)
				if id=1 do objs.Document.Insert(obj)
			//}
		}
		
	}
	return objs
}

}
