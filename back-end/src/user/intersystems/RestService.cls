Class EPCIS.intersystems.RestService Extends %CSP.REST
{

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
     <Route Url="/capture" Method="POST" Call="captureJ"/>
      <Route Url="/capturex" Method="POST" Call="captureX"/>
      <Route Url="/eventquery" Method="GET" Call="eventQuery"/>
   </Routes>
}

ClassMethod eventQuery() As %Status
{
	set tSC=$$$OK
	set step=$g(%request.Data("step",1))
	set epcs=$g(%request.Data("epcs",1))
	set time=$g(%request.Data("time",1))
	
	if epcs'="" {
		set epcCount=$length(epcs,",")
		set sql="select id from EPCIS_epcis.ObjectEventType where "
		for i=1:1:epcCount {
			set epc(i)=$piece(epcs,",",i)
			if i>1 set sql=sql_" & "
			set sql=sql_"epcList LIKE '%"_epc(i)_"%'"
			if i=epcCount set sql=sql_" & "
		}
		// starting with default of discharge
		if step="" set step = "urn:epcglobal:cbv:bizstep:departing"
		set sql=sql _ "bizstep = '"_step_"'"
		
		if time'="" {
			set sql=sql _ " & eventTime %STARTSWITH '"_time_"'"
		}
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
		for i=1:1:$get(id) {
			set obj=##class(EPCIS.epcis.EPCISDocumentType).%OpenId(id(i))
			do obj.XMLExport()
		}
	}
	quit tSC
}

ClassMethod captureJ() As %Status
{
	set sc=$$$OK
	
	If '..GetJSONFromRequest(.obj) {
    	Set %response.Status = ..#HTTP400BADREQUEST
    	Set error = {"errormessage": "JSON not found"}
    	Write error.%ToJSON()
    	Quit $$$OK
  		}
  /*
  	If '..ValidateJSON(obj,.error) {
    	Set %response.Status = ..#HTTP400BADREQUEST
    	Write error.%ToJSON()
    	Quit $$$OK
  		}
	*/
  	//set sc=..CopyToEpcisDocumentFromJSON(.doc,obj)
  
  	//Set sc = doc.%ValidateObject()
  	
  	set json=obj
  	set ^DEBUGJ=json.%ToJSON()
  	
  	set tDocument=##class(EPCIS.intersystems.DocumentRequest).%New() 
  	set tSC=tDocument.%JSONImport(json)
  	
  	Set result={}
  	do result.%Set("Status",$s($$$ISERR(sc):$system.Status.GetOneErrorText(sc),1:"OK"))
  	write result.%ToJSON()
  	If ($$$ISERR(sc)) Quit tSC
  	
  	set tSC = tDocument.%Save()
  	
  	Quit tSC
}

ClassMethod captureX() As %Status
{
	set sc=$$$OK
	
	set reader=##class(%XML.Reader).%New()
	set xml=%request.Content.Read()

	set tSC = reader.OpenString(xml)
	
	If ($$$ISERR(tSC)) Quit tSC
	
	set doc=""
	do reader.Correlate("EPCISDocument","EPCIS.epcis.EPCISDocumentType")
	while reader.Next(.doc,.tSC) {
		set ^DEBUG("doc")=doc
		If ($$$ISERR(tSC)) Quit
		Set tSC = doc.%ValidateObject()
		If ($$$ISERR(tSC)) Quit
		set tSC = doc.%Save()

		
	}
   
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
