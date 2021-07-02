Class EPCIS.intersystems.SubscriberStreamService Extends %CSP.REST
{

XData UrlMap
{
<Routes>
      <Route Url="/subscriberstream/:id" Method="GET" Call="GetStream"/>
   </Routes>
}

ClassMethod GetStream(id As %Integer) As %Status
{
	set tSC=$$$OK
	set ^DEBUGID = id
    #dim %request As %CSP.Request
	set tRequest=##class(EPCIS.intersystems.SubscriberStreamRequest).%New()
    set tRequest.Subscriber = id
    
     // Create the business service 
  	Set tSC=##class(Ens.Director).CreateBusinessService("EPCIS SubscriberStream Service",.tService) 
  	If ($$$ISERR(tSC)) Quit tSC
  	
   	// Call the ProcessInput method of the business service 
  	Set tSC=tService.ProcessInput(tRequest,.tResponse) 
  	#dim tResponse As EPCIS.intersystems.SubscriberStreamResponse
  	If ($$$ISERR(tSC)) Quit tSC
  	if $isobject(tResponse) {
	  	do tResponse.Stream.OutputToDevice()
  	}
	quit tSC
}

}
