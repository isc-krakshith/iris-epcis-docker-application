Class EPCIS.intersystems.PublishProcess Extends Ens.BusinessProcess [ ClassType = persistent ]
{

Property NotifyTarget As Ens.DataType.ConfigName [ InitialExpression = "EPCIS Notify Process" ];

Property Domain As Ens.DataType.ConfigName [ InitialExpression = {$piece($classname(),".",1)} ];

/*  
	first pass is hierarchy of
		type (ObjectEvent/AggregateEvent)
		action (ADD/OBSERVE)
		location (ward)
		transactions (episode no)
		epcs (gsrn, sscc, gtin, gdti)
		destination

			

	for example:
	
	those interested in a specific ward (e.g. morgue)
	
	^EPCIS.intersystems.SubscriptionIndex("*","*","urn:epc:id:sgln:50552084.00777.0")
	=bitmap of subscription ids
	
	those interested in a specific patient episode (PV1:19)
	
	^EPCIS.intersystems.SubscriptionIndex("*","*","*","urn:epcglobal:cbv:bt:5055208400003:1234567")
	=bitmap of sub ids
	
	those interested in events linked to an epc for a bag of medicine
	
	^EPCIS.intersystems.SubscriptionIndex("*","*","*","*","urn:epc:id:sscc:50552084.107346.2017")
	=bitmap of sub ids
	
	In theory, any combination of predicates could be subscribed to
	
	What is not covered in the RESTful EPCIS spec is destinationList which includes
		<destinationList>
		<destination type="urn:epcglobal:cbv:sdt:owning_party">urn:epc:id:sgln:50552084.12345678.0</destination>
		<destination type="urn:epcglobal:cbv:sdt:possessing_party">urn:epc:id:sgln:5050898.87654321.0</destination>
		</destinationList>
		
	^EPCIS.intersystems.SubscriptionIndex("*","*","*","*","*","urn:epc:id:sgln:5050898.87654321.0")
	=bitmap of sub ids

*/
Method OnRequest(pRequest As EPCIS.intersystems.PublishRequest, Output pResponse As Ens.Response) As %Status
{
	set tSC=$$$OK
	kill flag
	set $bit(flag,1)=0
	// set c=$bitlogic(~a&b)
	
	set tMap=##class(EPCIS.intersystems.SubscribeMap).%OpenId(..Domain)
	if '$isobject(tMap) quit $$$ERROR($$$EnsErrGeneral,"No domain defined for this subscription process")
	set tDocTemp=##class(EnsLib.EDI.XML.Document).%New()
	
	// Turn event object into XML
	// namespace resolution TBD
	do pRequest.CaptureRequest.pDocument.EPCISBody.EventList.ObjectEvent.GetAt(1).any.Clear()
	set tSC=pRequest.CaptureRequest.XMLExportToString(.tXML)
	set tDoc=tDocTemp.ImportFromString(tXML)
	set tSC=tDoc.PokeDocType(tMap.DocType)
	
	// loop through the map for predicate names
	
	set ary=tMap.Storage
	set queryary=$query(@ary@(""))
  	
  	for   {
    set queryary=$query(@queryary) 
        quit:queryary="" 
        // match the non-wildcards
        set qlength=$qlength(queryary)
        for i=1:1:qlength {
	        set sub=$qsubscript(queryary,i)
	        if sub'="*" {
		        // get the parameter name and associated path
		        if '$get(name(i)) set name(i)=tMap.Priority.GetAt(i)
		        if '$get(path(i)) set path(i)=tMap.Name.GetAt(name(i))
		        if name(i)["(" {
			        // get count
			        set slashCount=$length(path(i),"/")
			        set countPath=$piece(path(i),1,slashCount-1)
			        for j=1:1:countPath {
				        set value=tDoc.GetValueAt(path(i)_"/["_j_"]")
			        	if '$get(@name(i)) {
				        	set @name(i)=""
			        		if value=sub set @name@(i)=value
			        	}
			        }
			        if '$get(@name(i)) {
				        set childpath(i)=tMap.Name.GetAt("child"_name)
				        if (childpath(i)'="") {
					        // get count
			        		set slashCount=$length(path(i),"/")
			        		set countPath=$piece(path(i),1,slashCount-1)
			        		for j=1:1:countPath {
				        		set value=tDoc.GetValueAt(path(i)_"/["_j_"]")
			        			if '$get(@name(i)) {
				        			set @name(i)=""
			        				if value=sub set @name(i)=value
			        				}
			        		}
				        }
			        }
		        }
		        else {
			        if '$get(@name(i)) {
				        set @name(i)=tDoc.GetValueAt(path(i))

			        }
		        }
		    if @name(i)=sub {
					        set subscribers=@queryary
					        set toNotify=$bitlogic(~flag&subscribers)
					        // notification list to business component
					        set ^NOTIFY(pRequest.%Id())=toNotify
					        // send to Notify BP
					        if $bitcount(toNotify)>0 {
						        // BP call here
						        set tNotify=##class(EPCIS.intersystems.NotifyRequest).%New()
						        set tNotify.NotifyList=toNotify
						        set tNotify.Event=pRequest.CaptureResponse.CaptureResult
						        set tSC=..SendRequestAsync(..NotifyTarget,tNotify)
					        }
					        if $bitcount(subscribers)>0 set flag=$bitlogic(flag&subscribers)
				        }   
	        }
        }
        set bit=@queryary
  	}
	
	
	
	set ^DEBUGSC=tSC

	Quit tSC
}

Storage Default
{
<Data name="PublishProcessDefaultData">
<Subscript>"PublishProcess"</Subscript>
<Value name="1">
<Value>Domain</Value>
</Value>
<Value name="2">
<Value>NotifyTarget</Value>
</Value>
</Data>
<DefaultData>PublishProcessDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

Parameter SETTINGS = "-ThrottleDelay,NotifyTarget,Domain,ReplyCodeActions,RetryInterval,AlertRetryGracePeriod:Alerting,FailureTimeout,QueueCountAlert:Alerting,QueueWaitAlert:Alerting";

/// Handle a 'Response'
Method OnResponse(request As %Library.Persistent, ByRef response As %Library.Persistent, callrequest As %Library.Persistent, callresponse As %Library.Persistent, pCompletionKey As %String) As %Status
{
	// Subclass responsibility
	Quit $$$OK
}

}
