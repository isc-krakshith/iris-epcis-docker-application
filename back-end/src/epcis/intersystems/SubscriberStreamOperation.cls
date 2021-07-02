Class EPCIS.intersystems.SubscriberStreamOperation Extends Ens.BusinessOperation
{

Parameter ADAPTER = "EnsLib.HTTP.OutboundAdapter";

Property Adapter As EnsLib.HTTP.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method GetStream(pRequest As EPCIS.intersystems.SubscriberStreamRequest, Output pResponse As EPCIS.intersystems.SubscriberStreamResponse) As %Status
{
	set tSC=$$$OK
	#dim tResponse As %Net.HttpResponse
	
	set pData(1)=pRequest.DocumentList
	set tSC=..Adapter.Get(.tResponse,"list",.pData)
	if tSC {
		set pResponse=##class(EPCIS.intersystems.SubscriberStreamResponse).%New()
		set ^DEBUG($H)=tResponse.Data.Read()
		if $isobject(tResponse.Data) {
			set pResponse.Stream=tResponse.Data
		}
		else {
			do pResponse.Stream.Write(tResponse.Data)
		}
	}
	Quit tSC
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="EPCIS.intersystems.SubscriberStreamRequest"> 
		<Method>GetStream</Method>
	</MapItem>
</MapItems>
}

}
