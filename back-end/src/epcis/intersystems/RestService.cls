Class EPCIS.intersystems.RestService Extends %CSP.REST
{

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
      <Route Url="/test" Method="GET" Call="test"/>
      <Route Url="/capture" Method="POST" Call="captureJ"/>
      <Route Url="/capturex" Method="POST" Call="captureX"/>
      <Route Url="/eventquery" Method="GET" Call="eventQuery"/>
   </Routes>
}

ClassMethod test() As %Status
{
	return $$$OK
}

ClassMethod eventQuery() As %Status
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
  	Set tSC=##class(Ens.Director).CreateBusinessService("EPCIS Query Service",.tService) 
  	If ($$$ISERR(tSC)) Quit tSC
  	
  	
  	// Call the ProcessInput method of the business service 
  	Set tSC=tService.ProcessInput(tRequest,.output) 
  	
  	#dim output as EPCIS.intersystems.EventQueryResponse
  	
  	
  	If ($$$ISERR(tSC)) Quit 
  	// turn <nhs:primaryNurse>urn:epc:id:gsrnp:50552276.000000003</nhs:primaryNurse>
  	// into "primaryNurse*:*urn:epc:id:gsrnp:50552276.000000003"
  	if $isobject(output) {
	  	set tDocNum=output.EventQueryResult.Count()
	  	for i=1:1:tDocNum {
		  	if (output.EventQueryResult.GetAt(i).EPCISBody.EventList.ObjectEvent.Count()>0)
		  	{
		  	set tAddNum=output.EventQueryResult.GetAt(i).EPCISBody.EventList.ObjectEvent.GetAt(1).any.Count()
		  	for j=1:1:tAddNum {
			  	set tNHS=output.EventQueryResult.GetAt(i).EPCISBody.EventList.ObjectEvent.GetAt(1).any.GetAt(j)
			  	set tTag=$piece($piece(tNHS,">",1),":",2)
			  	set tValue=$piece($piece(tNHS,">",2),"<",1)
			  	set tItem=tTag_"*:*"_tValue
			  	if j=1 set tItem="{*"_tItem
			  	if j=tAddNum set tItem=tItem_"*}"
			  	set tSC=output.EventQueryResult.GetAt(i).EPCISBody.EventList.ObjectEvent.GetAt(1).any.SetAt(tItem,j)
		  	}
		  	}
		  	if (output.EventQueryResult.GetAt(i).EPCISBody.EventList.TransactionEvent.Count()>0)
		  	{
		  	set tAddNum=output.EventQueryResult.GetAt(i).EPCISBody.EventList.TransactionEvent.GetAt(1).any.Count()
		  	for j=1:1:tAddNum {
			  	set tNHS=output.EventQueryResult.GetAt(i).EPCISBody.EventList.TransactionEvent.GetAt(1).any.GetAt(j)
			  	set tTag=$piece($piece(tNHS,">",1),":",2)
			  	set tValue=$piece($piece(tNHS,">",2),"<",1)
			  	set tItem=tTag_"*:*"_tValue
			  	if j=1 set tItem="{*"_tItem
			  	if j=tAddNum set tItem=tItem_"*}"
			  	set tSC=output.EventQueryResult.GetAt(i).EPCISBody.EventList.TransactionEvent.GetAt(1).any.SetAt(tItem,j)
		  	}
		  	}
	  	}
  		set tSC=output.%JSONExportToString(.json)
  		set json=$replace(json,"*:*",""":""") 
  		set json=$replace(json,"*}""","""}")
  		set json=$replace(json,"""{*","{""")
  		write json
	  	//do output.%JSONExport()
  	}
	quit tSC
}

ClassMethod captureJ() As %Status [ ProcedureBlock = 0 ]
{
	set sc=$$$OK
	
	If '..GetJSONFromRequest(.obj) {
    	Set %response.Status = ..#HTTP400BADREQUEST
    	Set error = {"errormessage": "JSON not found"}
    	Write error.%ToJSON()
    	Quit $$$OK
  		}
  
  	set json=obj
  	set ^DEBUGJ=json.%ToJSON()
  	
  	// Because JSON and XML Schema are not entirely the best of friends this:
  	// {"inpatientSpellId":543210,"inpatientWardStayId":5555555,"PASnumber":"F10105550552084"}
  	// becomes
  	// "<nhs:inpatientSpellId>543210</nhs:inpatientSpellId>","<nhs:inpatientWardStayId>5555555</nhs:inpatientWardStayId>","<nhs:PASnumber>F10105550552084</nhs:PASnumber>"
  	// Parse EPCIS.intersystems.NHS properties to get simple and complex datatypes
  	
	set tXML=""
  	set tAttribute=""
  	do {
	  	set tAttribute=$SYSTEM.Dictionary.defClassArrayNext("EPCIS.intersystems.NHS.nhs","a",tAttribute)
	  	if tAttribute'="" {		  	
		  	set tCommand="set tValue=json.EPCISBody.EventList.ObjectEvent.%Get(0).any.%Get(0)."_tAttribute
		  	x tCommand
		  	if $get(tValue)'="" {
			  	set tXML=tXML_"<nhs:"_tAttribute_">"_tValue_"</nhs:"_tAttribute_">"
		  	}
	  	}
  	} while tAttribute'=""
  	
  	do json.EPCISBody.EventList.ObjectEvent.%Get(0).any.%Set(0,tXML)
  	
  	set tDocument=##class(EPCIS.intersystems.DocumentRequest).%New() 
  	set tSC=tDocument.EPCISDocument.%JSONImport(json)
  	
  	Set result={}
  	do result.%Set("Status",$s($$$ISERR(sc):$system.Status.GetOneErrorText(sc),1:"OK"))
  	write result.%ToJSON()
  	If ($$$ISERR(sc)) Quit tSC
  	
  	// Create the business service 
  	Set tSC=##class(Ens.Director).CreateBusinessService("EPCIS Capture Service",.tService) 
  	If ($$$ISERR(tSC)) Quit tSC
  	
  	// Create the request message 
	//Set tRequest = ##class(EPCIS.intersystems.CaptureRequest).%New() 
	// Place a value in the request message property 
	//Set tRequest.pDocument=tDocument
  	// Call the ProcessInput method of the business service 
  	Set tSC=tService.ProcessInput(tDocument,.output) 
  	If ($$$ISERR(tSC)) Quit tSC
  	
  	Quit tSC
}

ClassMethod captureX() As %Status
{
	set sc=$$$OK
	
	set reader=##class(%XML.Reader).%New()
	set xml=%request.Content.Read()

	set tSC = reader.OpenString(xml)
	set ^DEBUG("xml")=xml
	If ($$$ISERR(tSC)) Quit tSC
	
	set doc=""
	do reader.Correlate("EPCISDocument","EPCIS.epcis.EPCISDocumentType")
	while reader.Next(.doc,.tSC) {
		set ^DEBUG("correlate")=tSC
		If ($$$ISERR(tSC)) Quit
		set ^DEBUG("doc")=tSC_"*"_doc
		// Create the request message and give its property a value 
  		set tRequest=##class(EPCIS.intersystems.DocumentRequest).%New() 
  		set tRequest.EPCISDocument=doc
		Set tSC = doc.%ValidateObject()
		

		
	}
    If ($$$ISERR(tSC)) Quit tSC
	
  	// Create the business service 
  	Set tSC=##class(Ens.Director).CreateBusinessService("EPCIS Capture Service",.tService) 
  	If ($$$ISERR(tSC)) Quit tSC
  	
  	// Call the ProcessInput method of the business service 
  	Set tSC=tService.ProcessInput(tRequest,.output) 
  	If ($$$ISERR(tSC)) Quit tSC
  	
  	Quit tSC
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

}
