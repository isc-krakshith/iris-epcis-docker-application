Class EPCIS.intersystems.AppQueryProcess Extends Ens.BusinessProcess [ ClassType = persistent ]
{

///  EPCIS Query Service Wrapper
///  Creates FHIR bundle with Encounter (with list of Locations) and Patient
Property Repository As Ens.DataType.ConfigName;

Property Location As Ens.DataType.ConfigName;

Property PAS As Ens.DataType.ConfigName;

Method OnRequest(pRequest As EPCIS.intersystems.EventQueryRequest, Output pResponse As HS.Message.FHIR.Response) As %Status
{
	set tSC=$$$OK
	
	kill ^||LOC,^||STATUS
	#dim tEvents as EPCIS.intersystems.EventQueryResponse
	set pResponse=##class(HS.Message.FHIR.Response).%New()
	set tSC=..SendRequestSync(..Repository,pRequest,.tOpEvents)
	quit:'tSC tSC
	
	#dim tEvent as EPCIS.intersystems.client.ns2.EPCISDocumentType
	
	set pCount=pRequest.QueryParams.Count()
	for p=1:1:pCount {
		if pRequest.QueryParams.GetAt(p).name="destination" set tDestination=pRequest.QueryParams.GetAt(p).value
		if pRequest.QueryParams.GetAt(p).name="location" set tLocation=pRequest.QueryParams.GetAt(p).value
		if pRequest.QueryParams.GetAt(p).name="epcs" set tEPC=pRequest.QueryParams.GetAt(p).value
		if pRequest.QueryParams.GetAt(p).name="inpatientSpellId" set tSpellId=pRequest.QueryParams.GetAt(p).value
	}
	//quit:($get(tLocation)="") tSC
	
	set tOpCount=tOpEvents.EventQueryResult.Count()

	//if ($get(tEPC)'="") {
		set tEpisode=""
		for i=1:1:tOpCount {
		
		set tEvent=tOpEvents.EventQueryResult.GetAt(i)
		/*
		set tTCount=tEvent.EPCISBody.EventList.ObjectEvent.GetAt(1).bizTransactionList.Count()
		if (tTCount) {
			#dim tTransaction as EPCIS.intersystems.client.ns2.BusinessTransactionType
			set tTransaction=tEvent.EPCISBody.EventList.ObjectEvent.GetAt(1).bizTransactionList.GetAt(1)
			set tEpisode=tTransaction.content
			//  <!--Discharge Summary, identified by GDTI = <company prefix><doc type><check digit><inpatient spellid 10 chars><vsn 3 chars><pring number 4 chars> -->
			set tEpisode=+$extract($piece(tEpisode,".",3),1,10)
		}
		*/
		set tNHS=tEvent.EPCISBody.EventList.ObjectEvent.GetAt(1).any.GetAt(1)
		set tEpisode=$piece($piece(tNHS,">",2),"<")
		}
		quit:(tEpisode="") tSC
		
		set tRequest=##class(EPCIS.intersystems.EventQueryRequest).%New()
		set tParam=##class(EPCIS.epcisq.QueryParam).%New()
		set tParam.name="inpatientSpellId"	
		set tParam.value=tEpisode
		do tRequest.QueryParams.Insert(tParam)
		/*
		set tParam=##class(EPCIS.epcisq.QueryParam).%New()
		set tParam.name="location"
		set tParam.value=tLocation
		do tRequest.QueryParams.Insert(tParam)
		*/
		set pResponse=##class(HS.Message.FHIR.Response).%New()
		set tSC=..SendRequestSync(..Repository,tRequest,.tEvents)
		quit:'tSC tSC
		
	//}
	set tCount=tEvents.EventQueryResult.Count()

	if (tCount) {
	
	// For each Event determine Location and add to Encounter or Activity Definition
	set tEncounter = ##class(HS.FHIR.vSTU3.Model.Resource.Encounter).%New()
	set tAD=##class(HS.FHIR.vSTU3.Model.Resource.ActivityDefinition).%New()

		
	// Fetch Patient details
	set tPasRequest=##class(EPCIS.intersystems.PasRequest).%New()
	
	for i=1:1:tCount {
		if ((tPasRequest.EpisodeNumber'="")&&(tPasRequest.PasNumber'="")) quit
		#dim tEvent as EPCIS.intersystems.client.ns2.EPCISDocumentType
		set tEvent=tEvents.EventQueryResult.GetAt(i)
		set tNHSCount=tEvent.EPCISBody.EventList.ObjectEvent.GetAt(1).any.Count()
		for j=1:1:tNHSCount {
			set tField=tEvent.EPCISBody.EventList.ObjectEvent.GetAt(1).any.GetAt(j)
			
			if ((tPasRequest.PasNumber="")&&(tField["PASnumber")) {
				set tPasRequest.PasNumber=$piece($piece(tField,">",2),"<",1)
			}
			if ((tPasRequest.EpisodeNumber="")&&(tField["inpatientSpellId")) {
				set tPasRequest.EpisodeNumber=$piece($piece(tField,">",2),"<",1)
			}
		}
	
	set tPasResponse=##class(EPCIS.intersystems.PasResponse).%New()
	if (tPasRequest.PasNumber'="") {
		set PAS=tPasRequest.PasNumber
		if $length(PAS)>8 {
			set tPasRequest.PasNumber=$extract(tPasRequest.PasNumber,1,$length(PAS)-8)
		}
	
		set tSC=..SendRequestSync(..PAS,tPasRequest,.tPasResponse)
		quit:'tSC tSC
	}
	set tSC=##class(HS.FHIR.Utils).StartBundleStream("JSON",.tBundleStream)
	set tSC=##class(HS.FHIR.Utils).AddBundleEntryToStream("JSON",.tBundleStream,,tPasResponse.Patient)
	}
	// Loop through and check for discharges and add locations
	if ($get(tDestination)'="") {
	for i=1:1:tCount {
			set tReadPoint=tEvents.EventQueryResult.GetAt(i).EPCISBody.EventList.ObjectEvent.GetAt(1).readPoint.id
			set tStatus=tEvents.EventQueryResult.GetAt(i).EPCISBody.EventList.ObjectEvent.GetAt(1).bizStep							
			if ($get(tReadPoint)'="") {
				if (tStatus [ "departing") set ^||STATUS(tReadPoint,i)=1
			}
			set tBundleEntry=##class(HS.FHIR.vSTU3.Model.Resource.Bundle.Entry).%New()
			set tLocation=tReadPoint
			if $get(tLocation)'="" {
				set tGLN=$zstrip($piece(tLocation,":",5),"*P")
				merge ^DEBUG("LOC")=^||LOC
				if ((+tGLN>0)&&($get(^||LOC(tLocation))="")) {
					set tLocationRequest=##class(EPCIS.intersystems.LocatorRequest).%New()
					
					set tLocationRequest.GetURL="/gln/"_tGLN_"/associations"
					
					set tSC=..SendRequestSync(..Location,tLocationRequest,.tLocationResponse)
					quit:'tSC

					#dim tLocationResponse as EnsLib.HTTP.GenericMessage
					
					set tFhirLocation=##class(HS.FHIR.vSTU3.Model.Resource.Location).%New()
					if $isobject(tLocationResponse) {
								set tStream=tLocationResponse.Stream.Read()
								if (tStream'="") {
									#dim tFhirLocation as HS.FHIR.vSTU3.Model.Resource.Location
									set tSC=##class(EPCIS.intersystems.LocatorResponseToFHIR).Transform(tLocationResponse,.tFhirLocation)
								}
								if $isobject(tFhirLocation) {
									do tFhirLocation.SetId(tGLN)
									if tFhirLocation.description.value="" {
										set ^||LOC(tLocation)="GLN "_tLocation_" is not mapped to local Location"
										set tFhirLocation.description=##class(HS.FHIR.vSTU3.Model.Datatype.String).%New()
															
										set tFhirLocation.description.value=^||LOC(tLocation)
									}
									else {
										set ^||LOC(tLocation)=tFhirLocation.description.value
									}
									set tSC=##class(HS.FHIR.Utils).HSFHIRToFHIR("JSON",tFhirLocation,.tLocationStream)
									set tSC=##class(HS.FHIR.Utils).AddBundleEntryToStream("JSON",.tBundleStream,,tLocationStream)
								}}}
		}
		
	
	}

				if $get(tDestination)'="" {
						for i=1:1:tOpCount {

										set tBagCount=tOpEvents.EventQueryResult.GetAt(i).EPCISBody.EventList.ObjectEvent.GetAt(1).epcList.Count()
										set tQuantity=tAD.quantity.value.value
										
										do tAD.SetQuantity(tQuantity+tBagCount)
										for b=1:1:tBagCount {
											set tTask=##class(EPCIS.FHIR.vSTU3.Model.Resource.Task).%New()
											do tTask.SetIntent("filler-order")
											do tTask.SetCode("fulfill")
											do tTask.SetIdentifier(tOpEvents.EventQueryResult.GetAt(i).EPCISBody.EventList.ObjectEvent.GetAt(1).epcList.GetAt(b))
											set tSpellId=tOpEvents.EventQueryResult.GetAt(i).EPCISBody.EventList.ObjectEvent.GetAt(1).any.GetAt(1)
											do tTask.SetGroupIdentifier($piece($piece(tSpellId,">",2),"</"),,,,,,"inpatientSpellId")
											do tAD.SetKind("Task")
											set tLocation=tOpEvents.EventQueryResult.GetAt(i).EPCISBody.EventList.ObjectEvent.GetAt(1).readPoint.id
											
											set tGLN=$zstrip($piece(tLocation,":",5),"*P")
											if ((+tGLN>0)&&($get(^||LOC(tLocation))="")) {
												set tLocationRequest=##class(EPCIS.intersystems.LocatorRequest).%New()
												
												set tLocationRequest.GetURL="/gln/"_tGLN_"/associations"
					
												set tSC=..SendRequestSync(..Location,tLocationRequest,.tLocationResponse)
												quit:'tSC

												#dim tLocationResponse as EnsLib.HTTP.GenericMessage
					
												set tFhirLocation=##class(HS.FHIR.vSTU3.Model.Resource.Location).%New()
												if $isobject(tLocationResponse) {
													set tStream=tLocationResponse.Stream.Read()
													if (tStream'="") {
														#dim tFhirLocation as HS.FHIR.vSTU3.Model.Resource.Location
														set tSC=##class(EPCIS.intersystems.LocatorResponseToFHIR).Transform(tLocationResponse,.tFhirLocation)
								
													if $isobject(tFhirLocation) {
														do tFhirLocation.SetId(tGLN)
														if tFhirLocation.description.value="" {
															set ^||LOC(tLocation)="GLN "_tLocation_" is not mapped to local Location"
															set tFhirLocation.description=##class(HS.FHIR.vSTU3.Model.Datatype.String).%New()
															set tFhirLocation.description.value=^||LOC(tLocation)
															}
														else {
															set ^||LOC(tLocation)=tFhirLocation.description.value
															
															}
														set tBundleEntry=##class(HS.FHIR.vSTU3.Model.Resource.Bundle.Entry).%New()

														set tSC=##class(HS.FHIR.Utils).HSFHIRToFHIR("JSON",tFhirLocation,.tLocationStream)
														set tSC=##class(HS.FHIR.Utils).AddBundleEntryToStream("JSON",.tBundleStream,,tLocationStream)
												}
										}
								}
								}
								do tTask.SetLocation("Location/"_tGLN)
											
								do tAD.SetContained(tTask)
								}
								// http://terminology.hl7.org/fhir/CodeSystem/medicationdispense-category
								do tAD.SetCode("discharge",,"http://terminology.hl7.org/fhir/CodeSystem/medicationdispense-category")
										
								}
						
					}
			
				
				
				if $get(tDestination)="" {	
			
					set tEncounterLocation=##class(HS.FHIR.vSTU3.Model.Resource.Encounter.Location).%New()
					if (tFhirLocation.description.value'="") {
						do tEncounterLocation.SetLocation(,^||LOC(tLocation))
					} else {
						do tEncounterLocation.SetLocation(,"GLN "_tLocation_" is not mapped to local Location")
					}
					set tEventTime=tEvents.EventQueryResult.GetAt(i).EPCISBody.EventList.ObjectEvent.GetAt(1).eventTime
					set tOffset=tEvents.EventQueryResult.GetAt(i).EPCISBody.EventList.ObjectEvent.GetAt(1).eventTimeZoneOffset
					set tTime=$translate(tEventTime_tOffset," ","T")
					do tEncounterLocation.SetPeriod(tTime)
					do tEncounter.location.Insert(tEncounterLocation)
					set tStatusHistory=##class(HS.FHIR.vSTU3.Model.Resource.Encounter.StatusHistory).%New()
					do tStatusHistory.SetPeriod(tTime)
					
					set tStatus=$piece(tEvents.EventQueryResult.GetAt(i).EPCISBody.EventList.ObjectEvent.GetAt(1).bizStep,":",5)
					if tStatus="departing" set tStatus="finished"  //says completed on FHIR.org
					if tStatus="arriving" set tStatus="arrived"
					if tStatus="accepting" set tStatus="in-progress"

					do tStatusHistory.SetStatus(tStatus)
					do tEncounter.statusHistory.Insert(tStatusHistory)
				}
				
	}

	if $get(tDestination)="" {
				
				set tSC=##class(HS.FHIR.Utils).HSFHIRToFHIR("JSON",tEncounter,.tEncounterStream)
				set tSC=##class(HS.FHIR.Utils).AddBundleEntryToStream("JSON",.tBundleStream,,tEncounterStream)
			}
		else {
						set tSC=##class(HS.FHIR.Utils).HSFHIRToFHIR("JSON",tAD,.tActivityStream)
			set tSC=##class(HS.FHIR.Utils).AddBundleEntryToStream("JSON",.tBundleStream,,tActivityStream)
		}
	set pResponse.Payload=tBundleStream
}
	Quit tSC
}

Parameter SETTINGS = "-ThrottleDelay,Repository,Location,PAS,ReplyCodeActions,RetryInterval,AlertRetryGracePeriod:Alerting,FailureTimeout,QueueCountAlert:Alerting,QueueWaitAlert:Alerting";

Storage Default
{
<Data name="AppQueryProcessDefaultData">
<Subscript>"AppQueryProcess"</Subscript>
<Value name="1">
<Value>Repository</Value>
</Value>
<Value name="2">
<Value>Location</Value>
</Value>
<Value name="3">
<Value>PAS</Value>
</Value>
</Data>
<DefaultData>AppQueryProcessDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
