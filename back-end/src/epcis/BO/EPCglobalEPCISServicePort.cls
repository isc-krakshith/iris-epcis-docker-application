Class EPCIS.BO.EPCglobalEPCISServicePort Extends Ens.BusinessOperation [ ProcedureBlock ]
{

Method getQueryNames(pRequest As EPCIS.BO.getQueryNamesRequest, Output pResponse As EPCIS.BO.getQueryNamesResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "EPCIS.EPCglobalEPCISServicePort"
 Set tSC = ..Adapter.InvokeMethod("getQueryNames",.string)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.string=$get(string)
 Quit $$$OK
}

Method getStandardVersion(pRequest As EPCIS.BO.getStandardVersionRequest, Output pResponse As EPCIS.BO.getStandardVersionResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "EPCIS.EPCglobalEPCISServicePort"
 Set tSC = ..Adapter.InvokeMethod("getStandardVersion",.GetStandardVersionResult)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.GetStandardVersionResult=$get(GetStandardVersionResult)
 Quit $$$OK
}

Method getSubscriptionIDs(pRequest As EPCIS.BO.getSubscriptionIDsRequest, Output pResponse As EPCIS.BO.getSubscriptionIDsResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "EPCIS.EPCglobalEPCISServicePort"
 Set tSC = ..Adapter.InvokeMethod("getSubscriptionIDs",.string,pRequest.queryName)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.string=$get(string)
 Quit $$$OK
}

Method getVendorVersion(pRequest As EPCIS.BO.getVendorVersionRequest, Output pResponse As EPCIS.BO.getVendorVersionResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "EPCIS.EPCglobalEPCISServicePort"
 Set tSC = ..Adapter.InvokeMethod("getVendorVersion",.GetVendorVersionResult)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.GetVendorVersionResult=$get(GetVendorVersionResult)
 Quit $$$OK
}

Method poll(pRequest As EPCIS.BO.pollRequest, Output pResponse As EPCIS.BO.pollResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "EPCIS.EPCglobalEPCISServicePort"
 Set queryName=pRequest.queryName
 Set tSC = ..Adapter.InvokeMethod("poll",,.queryName,pRequest.params,.subscriptionID,.resultsBody,.extension,.any)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Set pResponse.queryName = $get(queryName),pResponse.subscriptionID = $get(subscriptionID),pResponse.resultsBody = $get(resultsBody),pResponse.extension = $get(extension),pResponse.any = $get(any)
 Quit $$$OK
}

Method subscribe(pRequest As EPCIS.BO.subscribeRequest, Output pResponse As EPCIS.BO.subscribeResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "EPCIS.EPCglobalEPCISServicePort"
 Set tSC = ..Adapter.InvokeMethod("subscribe",,pRequest.queryName,pRequest.params,pRequest.dest,pRequest.controls,pRequest.subscriptionID)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Quit $$$OK
}

Method unsubscribe(pRequest As EPCIS.BO.unsubscribeRequest, Output pResponse As EPCIS.BO.unsubscribeResponse) As %Library.Status
{
 Set ..Adapter.WebServiceClientClass = "EPCIS.EPCglobalEPCISServicePort"
 Set tSC = ..Adapter.InvokeMethod("unsubscribe",,pRequest.subscriptionID)  Quit:$$$ISERR(tSC) tSC
 Set tSC = pRequest.NewResponse(.pResponse)  Quit:$$$ISERR(tSC) tSC
 Quit $$$OK
}

Parameter ADAPTER = "EnsLib.SOAP.OutboundAdapter";

XData MessageMap
{
<MapItems>
	<MapItem MessageType="EPCIS.BO.getQueryNamesRequest">
		<Method>getQueryNames</Method>
	</MapItem>
	<MapItem MessageType="EPCIS.BO.getStandardVersionRequest">
		<Method>getStandardVersion</Method>
	</MapItem>
	<MapItem MessageType="EPCIS.BO.getSubscriptionIDsRequest">
		<Method>getSubscriptionIDs</Method>
	</MapItem>
	<MapItem MessageType="EPCIS.BO.getVendorVersionRequest">
		<Method>getVendorVersion</Method>
	</MapItem>
	<MapItem MessageType="EPCIS.BO.pollRequest">
		<Method>poll</Method>
	</MapItem>
	<MapItem MessageType="EPCIS.BO.subscribeRequest">
		<Method>subscribe</Method>
	</MapItem>
	<MapItem MessageType="EPCIS.BO.unsubscribeRequest">
		<Method>unsubscribe</Method>
	</MapItem>
</MapItems>
}

}
