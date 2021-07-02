Class EPCIS.intersystems.SubscriberStreamProcess Extends Ens.BusinessProcess [ ClassType = persistent ]
{

Property Target As Ens.DataType.ConfigName;

Method OnRequest(pRequest As EPCIS.intersystems.SubscriberStreamRequest, Output pResponse As EPCIS.intersystems.SubscriberStreamResponse) As %Status
{
	set tSC=$$$OK
	
	set pResponse=##class(EPCIS.intersystems.SubscriberStreamResponse).%New()
	
	set tSubscriber=pRequest.Subscriber
	if tSubscriber {
	
	set tDate=pRequest.RequestDate
	if 'tDate set tDate=+$H
	if $bitcount(^EPCIS.intersystems.SubscriberEL(tSubscriber,tDate)) {
		
	set pRequest.DocumentList=^EPCIS.intersystems.SubscriberEL(tSubscriber,tDate)
	set tSC=..SendRequestSync(..Target,pRequest,.tResponse)
	set pResponse.Stream=tResponse.Stream
	/*
	if tSC {
	#dim tResponse As EPCIS.intersystems.SubscriberStreamResponse
	set tStream=##class(%Stream.GlobalCharacter).%New()

	set tReader=##class(%XML.Reader).%New()
	set tStatus=tReader.OpenStream(tResponse.Stream)
	if tStatus {
		do tReader.Correlate("EPCISDocumentType","EPCIS.epcis.EPCISDocumentType")
		while tReader.Next(.tDoc) {
			#dim tDoc As EPCIS.epcis.EPCISDocumentType
			set tJSON=""
			set tStatus=tDoc.%JSONExportToString(.tJSON)
			do tStream.Write(tJSON)
			
		}
		
		set pResponse.Stream=tStream
	}
	
	}
	*/
	}
	
	}
	quit tSC
}

Parameter SETTINGS = "-ThrottleDelay,Target,ReplyCodeActions,RetryInterval,AlertRetryGracePeriod:Alerting,FailureTimeout,QueueCountAlert:Alerting,QueueWaitAlert:Alerting";

Storage Default
{
<Data name="SubscriberStreamProcessDefaultData">
<Subscript>"SubscriberStreamProcess"</Subscript>
<Value name="1">
<Value>Target</Value>
</Value>
</Data>
<DefaultData>SubscriberStreamProcessDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
