Class EPCIS.intersystems.PlymouthLocatorOperation Extends EnsLib.REST.Operation
{

Method getLocation(pRequest As EPCIS.intersystems.LocatorRequest, Output pResponse As EnsLib.HTTP.GenericMessage) As %Status
{
	set tSC=$$$OK
	set tURL=..Adapter.URL_pRequest.GetURL
	set pResponse=##class(EnsLib.HTTP.GenericMessage).%New()
	set tSC=..Adapter.GetURL(tURL,.tHttpResponse)
	// Return the response
    If $$$ISERR(tSC)&&$IsObject(tHttpResponse)&&$IsObject(tHttpResponse.Data)&&tHttpResponse.Data.Size {
         Set tSC=$$$ERROR($$$EnsErrGeneral,$$$StatusDisplayString(tSC)_":"_tHttpResponse.Data.Read())
      }
    Quit:$$$ISERR(tSC)
    
    set pResponse.Stream=tHttpResponse.Data
	quit tSC
}

XData MessageMap
{
<MapItems>
  <MapItem MessageType="EPCIS.intersystems.LocatorRequest">
    <Method>getLocation</Method>
  </MapItem>
</MapItems>
}

/// The adapter instance
Property Adapter As EnsLib.HTTP.OutboundAdapter;

}
