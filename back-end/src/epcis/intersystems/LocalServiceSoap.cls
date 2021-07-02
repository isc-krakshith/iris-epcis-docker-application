Class EPCIS.intersystems.LocalServiceSoap Extends Ens.BusinessOperation [ ProcedureBlock ]
{

Method Capture(pRequest As EPCIS.intersystems.CaptureRequest, Output pResponse As EPCIS.intersystems.CaptureResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "EPCIS.intersystems.client.LocalServiceSoap"
 Set tSC = ..Adapter.InvokeMethod("Capture",.CaptureResult,pRequest.pDocument)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.CaptureResult=$get(CaptureResult)
 Quit $$$OK
}

Method EventQuery(pRequest As EPCIS.intersystems.EventQueryRequest, Output pResponse As EPCIS.intersystems.EventQueryResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "EPCIS.intersystems.client.LocalServiceSoap"
 Set tSC = ..Adapter.InvokeMethod("EventQuery",.EventQueryResult,pRequest.QueryParams)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.EventQueryResult=$get(EventQueryResult)
 Quit $$$OK
}

Parameter ADAPTER = "EnsLib.SOAP.OutboundAdapter";

XData MessageMap
{
<MapItems>
	<MapItem MessageType="EPCIS.intersystems.CaptureRequest">
		<Method>Capture</Method>
	</MapItem>
	<MapItem MessageType="EPCIS.intersystems.EventQueryRequest">
		<Method>EventQuery</Method>
	</MapItem>
</MapItems>
}

}
