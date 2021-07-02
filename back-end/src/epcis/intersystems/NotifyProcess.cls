Class EPCIS.intersystems.NotifyProcess Extends Ens.BusinessProcess [ ClassType = persistent ]
{

Method OnRequest(pRequest As EPCIS.intersystems.NotifyRequest, Output pResponse As Ens.Response) As %Status
{
	set tSC=$$$OK
	//  as per the Topic based, this could be a push model, but for now it is a pull model.
	// Bitmap of subscribers is turned into a bitmap of Documents (events)
	// The EPCIS service has been altered to return the document id
	// bitmap is chunked by day, but this should be changed to chunked by Document id ranges
	set tBitmap=pRequest.NotifyList
	set tCount=$bitcount(tBitmap)
	for i=1:1:tCount {
		if $bit(tBitmap,i) {
			set $bit(^EPCIS.intersystems.SubscriberEL(i,+$h),pRequest.Event)=1
		}
	}
	
	Quit tSC
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
