Class EPCIS.intersystems.AppRestService Extends %CSP.REST
{

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
      <Route Url="/encounter" Method="GET" Call="FHIRbundle"/>
     <Route Url="/activitydefinition" Method="GET" Call="FHIRbundle"/>
     <Route Url="/demoStep1" Method="POST" Call="DemoGenerateAdmit"/>
     <Route Url="/demoStep2" Method="GET" Call="DemoLinkDocument"/>
     <Route Url="/demoStep3" Method="GET" Call="DemoSpellId"/>
     <Route Url="/demoStep4" Method="GET" Call="DemoPatientLocation"/>
     <Route Url="/demoStep5" Method="GET" Call="DemoDispense"/>
     <Route Url="/demoStep6" Method="GET" Call="DemoLocationFriendlyName"/>
     <Route Url="/demoStep7" Method="GET" Call="DemoFHIR"/>
     <Route Url="/demoStep8" Method="POST" Call="DemoGenerateDischarge"/>

   </Routes>
}

Parameter HTTP422UNPROCESSABLEENTITY As %String = "422 Unprocessible Entity";

/*===========================================================
// Allow Cross Origin scripting request
// or else front-end may not be able to receive response
// resulting in errors like this: 
// Cross-Origin Request Blocked: The Same Origin Policy
// disallows reading the remote resource at 
// http://localhost:52773/query
// (Reason: CORS header 'Access-Control-Allow-Origin' missing).
============================================================*/
Parameter HandleCorsRequest = 1;

ClassMethod FHIRbundle() As %Status
{
	set tSC=$$$OK
	#dim %request As %CSP.Request
	set tRequest=##class(EPCIS.intersystems.EventQueryRequest).%New()
	set name=""
	set name=$order(%request.Data(name))
	while (name'="") {
		set param=##class(EPCIS.epcisq.QueryParam).%New()
		set param.name=name
		set param.value=%request.Data(name,1)
		set name=$order(%request.Data(name))
		do tRequest.QueryParams.Insert(param)
	}
	// Create the business service 
  	Set tSC=##class(Ens.Director).CreateBusinessService("App Query Service",.tService) 
  	If ($$$ISERR(tSC)) Quit tSC
  	
  	
  	// Call the ProcessInput method of the business service 
  	Set tSC=tService.ProcessInput(tRequest,.output) 
  	If ($$$ISERR(tSC)) Quit tSC
  	#dim output As HS.Message.FHIR.Response
  	if $isobject(output) {
	  	do output.Payload.OutputToDevice()
  	}
	quit tSC
}

ClassMethod GetJSONFromRequest(obj As %DynamicObject) As %Boolean
{
	Set ok = 1
	Try {
		set ^DEBUG=%request.Content.Read()
		Set obj = ##class(%DynamicObject).%FromJSON(%request.Content)
	} Catch ex {
		Set ok = 0
	}
	Quit ok
}

ClassMethod ValidateJSON(obj As %DynamicObject, error As %DynamicObject) As %Boolean
{
	Set error = {}
	
	If obj.%Get("EPCISDocument") = "" {
		Set error.errormessage = "EPCISDocument was blank"
		Quit 0
	}	
	
	Quit 1
}

ClassMethod CopyToEpcisDocumentFromJSON(doc As EPCIS.epcis.EPCISDocumentType, obj As %DynamicObject) As %Status
{
	set tSC=$$$OK
	
	set xml=obj.%Get("EPCISDocument")
	set reader=##class(%XML.Reader).%New()
	set tSC = reader.OpenString(xml)
	
	If ($$$ISERR(tSC)) Quit tSC
	
	do reader.Correlate("EPCISDocument","EPCIS.epcis.EPCISDocumentType")
	while reader.Next(.doc,.tSC) {
		break
	}
	set ^DEBUG("doc")=doc
	quit tSC
}

ClassMethod GeneratePAS() As %String
{
	return "F10105"_^DEMO_"^^^^PAS~"_(1111111111*^DEMO)_"^^^^NHS"
}

ClassMethod DemoGenerateAdmit() As %Status
{
	set tSC=$$$OK
	do $increment(^DEMO)
	if ^DEMO=10 set ^DEMO=1
	set tP = ^DEMO

	// lets unpack the JSON object
	set data = ##class(%DynamicObject).%FromJSON(%request.Content)
	set FirstName = data.firstName
	set LastName = data.lastName
	set MRN = data.mrn //currently not used
	set Date = data.date //currently not used
	set PAS = ..GeneratePAS()

	set tDT=$zstrip($ZD($H,8),"*P")
	set MSH="MSH|^~\&|PAS|RK9|LSP|RK9|"_tDT_"105725|BRIDGER2|ADT^A01|987654321|P|2.4|||"
	set EVN="EVN||"_tDT_"105725||||"_tDT_"0500"
	set PID="PID|1||"_PAS_"||"_LastName_"^"_FirstName_"^^^MR||20000115|M|||5344 test St , Brest Rd, Plymouth^^^^PL6 5YE^NSP^HOME^^QD4||01752 444444^PHONE||NSP^Not Specified|S|7B|||||L|270|NSP||8||||N||PD1|||Abernethy House,70 Silver Street,Enfield,Middlesex,EN1 3EP^GPPRC^F85029^^^^^5558|G3346563^Yeo^ER^^^DR^^^^^6015||"
	set PV1="PV1|1|I|RK95034^^68^Derriford Hospital\T\RK950\T\HOSPT^^WARD^^^Monkswell Ward, Zone E, Level 10|2|||||5197018^Hussain^S A^^^DR^^413^^^175195|370||||1||||01|357327"_tP_"|||||1|||||||||||||||86|||||"_tDT_"050000|||||test|488274"_tP_"^394333"_tP_"^1168896"_tP
	set tPath=##class(Ens.Director).GetAdapterSettingValue("HL7 Test Service","FilePath")
	set tFile=##class(%File).%New(tPath_"/test"_tP_".hl7")
	do tFile.Open("WSN")
	set tSC=tFile.WriteLine(MSH_$c(13,10)_EVN_$c(13,10)_PID_$c(13,10)_PV1)
	

	//return PAS
	set jsonPAS = {}
	set jsonPAS.PAS = PAS
    write jsonPAS.%ToJSON()
	return tSC
}

ClassMethod DemoGenerateDischarge() As %Status
{
	set tSC=$$$OK
	set tP=^DEMO

	// lets unpack the JSON object
	set data = ##class(%DynamicObject).%FromJSON(%request.Content)
	set FirstName = data.firstName
	set LastName = data.lastName
	set MRN = data.mrn //currently not used
	set Date = data.date //currently not used
	set PAS = ..GeneratePAS()
	
	set tDT=$zstrip($ZD($H,8),"*P")
	set MSH="MSH|^~\&|PAS|RK9|LSP|RK9|"_tDT_"105725|BRIDGER2|ADT^A03|987654323|P|2.4|||"
	set EVN="EVN||"_tDT_"105725||||"_tDT_"0900"
	set PID="PID|1||"_PAS_"||"_LastName_"^"_FirstName_"^^^MR||20000115|M|||5344 test St , Brest Rd, Plymouth^^^^PL6 5YE^NSP^HOME^^QD4||01752 444444^PHONE||NSP^Not Specified|S|7B|||||L|270|NSP||8||||N||PD1|||Abernethy House,70 Silver Street,Enfield,Middlesex,EN1 3EP^GPPRC^F85029^^^^^5558|G3346563^Yeo^ER^^^DR^^^^^6015||"
	set PV1="PV1|1|I|RK95034^^68^Derriford Hospital\T\RK950\T\HOSPT^^WARD^^^Monkswell Ward, Zone E, Level 10|2|||||5197018^Hussain^S A^^^DR^^413^^^175195|370||||1||||01|3573274|||||1|||||||||||||||86|||||"_tDT_"090000|||||test|488274"_tP_"^394333"_tP_"^1168896"_tP
	set tPath=##class(Ens.Director).GetAdapterSettingValue("HL7 Test Service","FilePath")
	set tFile=##class(%File).%New(tPath_"/test"_tP_".hl7")
	do tFile.Open("WSN")
	set tSC=tFile.WriteLine(MSH_$c(13,10)_EVN_$c(13,10)_PID_$c(13,10)_PV1)
	
	//return PAS
	set jsonPAS = {}
	set jsonPAS.PAS = PAS
    write jsonPAS.%ToJSON()
	return tSC
}

ClassMethod DemoLinkDocument() As %Status
{
	set tSC=$$$OK
	
	Set tSC=##class(Ens.Director).CreateBusinessService("EPCIS Capture Service",.tService) 
  	If ($$$ISERR(tSC)) Quit tSC
  	set tRequest=##class(EPCIS.intersystems.DocumentRequest).%New()
  	set tDoc=##class(EPCIS.epcis.EPCISDocumentType).%New()
  	set tDoc.creationDate=$zd($H,3)
  	set tDoc.schemaVersion=1.2
  	set tBody=##class(EPCIS.epcis.EPCISBodyType).%New()
  	set tTransaction=##class(EPCIS.epcis.TransactionEventType).%New()
  	set tTransaction.eventTime=$zd($H,3)_" 09:12:00"
  	set tBiz=##class(EPCIS.epcis.BusinessTransactionType).%New()
  	set tBiz.content="urn:epc:id:gdti:50552084.0001.0000357327"_^DEMO_"001000"
  	do tTransaction.bizTransactionList.Insert(tBiz)
  	do tTransaction.epcList.Insert("urn:epc:id:gsrn:50552084.0070101052")
  	set tTransaction.action="ADD"
  	set tTransaction.bizStep="http://epcis.gs1uk.org/nhs/bizstep/summarising_discharge"
  	set tReadPoint=##class(EPCIS.epcis.ReadPointType).%New()
  	set tReadPoint.id="urn:epc:id:sgln:50552389.05340.0"
  	set tBizLocation=##class(EPCIS.epcis.BusinessLocationType).%New()
  	set tBizLocation.id="urn:epc:id:sgln:50552389.05340.0"
  	set tTransaction.readPoint=tReadPoint
  	set tTransaction.bizLocation=tBizLocation
	set tAny="<nhs:PASnumber>F10105250552084</nhs:PASnumber><nhs:inpatientSpellId>"_"357327"_^DEMO_"</nhs:inpatientSpellId>" 
	do tTransaction.any.Insert(tAny)
	do tBody.EventList.TransactionEvent.Insert(tTransaction) 	
	set tDoc.EPCISBody=tBody
	set tRequest.EPCISDocument=tDoc
	
  	// Call the ProcessInput method of the business service 
  	Set tSC=tService.ProcessInput(tRequest,.output) 
  	If ($$$ISERR(tSC)) Quit tSC
  	#dim output As Ens.Response
  	if $isobject(output) {
	  	write output.%Id()
  	}
	quit tSC
}

ClassMethod DemoSpellId() As %Status
{
	set tSC=$$$OK
	set tRequest=##class(EPCIS.intersystems.EventQueryRequest).%New()

	set tDischarge="'urn:epc:id:gdti:50552084.0001.0000357327"_^DEMO_"001000'"
	set param=##class(EPCIS.epcisq.QueryParam).%New()
	set param.name="transactions"
	set param.value=tDischarge
	do tRequest.QueryParams.Insert(param)
	// Create the business service 
  	Set tSC=##class(Ens.Director).CreateBusinessService("EPCIS Query Service",.tService) 
  	If ($$$ISERR(tSC)) Quit tSC
  	
  	
  	// Call the ProcessInput method of the business service 
  	Set tSC=tService.ProcessInput(tRequest,.output) 
  	If ($$$ISERR(tSC)) Quit tSC
  	#dim output As EPCIS.intersystems.EventQueryResponse
  	if $isobject(output) {
	  	do output.%JSONExport()
  	}
	quit tSC
}

// inpatientSpellId

ClassMethod DemoPatientLocation() As %Status
{
	set tSC=$$$OK
	set tRequest=##class(EPCIS.intersystems.EventQueryRequest).%New()

	set tSpellId="'"_"357327"_^DEMO_"'"
	set param=##class(EPCIS.epcisq.QueryParam).%New()
	set param.name="inpatientSpellId"
	set param.value=tSpellId
	do tRequest.QueryParams.Insert(param)
	// Create the business service 
  	Set tSC=##class(Ens.Director).CreateBusinessService("EPCIS Query Service",.tService) 
  	If ($$$ISERR(tSC)) Quit tSC
  	
  	
  	// Call the ProcessInput method of the business service 
  	Set tSC=tService.ProcessInput(tRequest,.output) 
  	If ($$$ISERR(tSC)) Quit tSC
  	#dim output As EPCIS.intersystems.EventQueryResponse
  	if $isobject(output) {
	  	do output.%JSONExport()
  	}
	quit tSC
}

ClassMethod DemoDispense() As %Status
{
	set tSC=$$$OK
	
	Set tSC=##class(Ens.Director).CreateBusinessService("EPCIS Capture Service",.tService) 
  	If ($$$ISERR(tSC)) Quit tSC
  	set tRequest=##class(EPCIS.intersystems.DocumentRequest).%New()
  	set tDoc=##class(EPCIS.epcis.EPCISDocumentType).%New()
  	set tDoc.creationDate=$zd($H,3)
  	set tDoc.schemaVersion=1.2
  	set tBody=##class(EPCIS.epcis.EPCISBodyType).%New()
  	set tObject=##class(EPCIS.epcis.ObjectEventType).%New()
  	set tObject.eventTime=$zd($H,3)_" 09:12:00"
  	set tExt=##class(EPCIS.epcis.ObjectEventExtensionType).%New()
  	set tDest=##class(EPCIS.epcis.SourceDestType).%New()
  	set tDest.content="urn:epc:id:sgln:50552389.05340.0"
  	set tDest.type="urn:epcglobal:cbv:sdt:location"
  	set tObject.extension=tExt
  	do tObject.extension.destinationList.Insert(tDest)
  	do tObject.epcList.Insert("urn:epc:id:sscc:5520841.0"_^DEMO_"23456108")
  	do tObject.epcList.Insert("urn:epc:id:sscc:5520841.0"_^DEMO_"23456108")

  	set tObject.action="OBSERVE"
  	set tObject.bizStep="urn:epcglobal:cbv:bizstep:departing"
  	set tReadPoint=##class(EPCIS.epcis.ReadPointType).%New()
  	set tReadPoint.id="urn:epc:id:sgln:50552389.0520.0"
  	set tBizLocation=##class(EPCIS.epcis.BusinessLocationType).%New()
  	set tBizLocation.id="urn:epc:id:sgln:50552389.0520.0"
  	set tObject.readPoint=tReadPoint
  	set tObject.bizLocation=tBizLocation
	set tAny="<nhs:inpatientSpellId>"_"357327"_^DEMO_"</nhs:inpatientSpellId>" 
	do tObject.any.Insert(tAny)
	do tBody.EventList.ObjectEvent.Insert(tObject) 	
	set tDoc.EPCISBody=tBody
	set tRequest.EPCISDocument=tDoc
	
  	// Call the ProcessInput method of the business service 
  	Set tSC=tService.ProcessInput(tRequest,.output) 
  	If ($$$ISERR(tSC)) Quit tSC
  	#dim output As Ens.Response
  	if $isobject(output) {
	  	write output.%Id()
  	}
	quit tSC
}

ClassMethod DemoLocationFriendlyName() As %Status
{
	set tSC=$$$OK
	set tRequest=##class(%Net.HttpRequest).%New()
	//set manually for now
	set tRequest.Port=52773
	set tRequest.Server="127.0.0.1"
	set tSC= tRequest.Get("/passthrough/LocationRestService/epcisuser/api/gln/5055238905200/associations")
	
  	if $isobject(tRequest.HttpResponse) {
	  	do tRequest.HttpResponse.OutputToDevice()
  	}
	quit tSC
}

ClassMethod DemoFHIR() As %Status
{
	//http://localhost:52773/query/activitydefinition?destination='urn:epc:id:sgln:50552389.05340.0'
	set tSC=$$$OK
	#dim %request As %CSP.Request
	set tRequest=##class(EPCIS.intersystems.EventQueryRequest).%New()
	set name="destination"
	set value="'urn:epc:id:sgln:50552389.05340.0'"
	set param=##class(EPCIS.epcisq.QueryParam).%New()
	set param.name=name
	set param.value=value
	do tRequest.QueryParams.Insert(param)
	// Create the business service 
  	Set tSC=##class(Ens.Director).CreateBusinessService("App Query Service",.tService) 
  	If ($$$ISERR(tSC)) Quit tSC
  	
  	
  	// Call the ProcessInput method of the business service 
  	Set tSC=tService.ProcessInput(tRequest,.output) 
  	If ($$$ISERR(tSC)) Quit tSC
  	#dim output As HS.Message.FHIR.Response
  	if $isobject(output) {
	  	do output.Payload.OutputToDevice()
  	}
	quit tSC
}

}
