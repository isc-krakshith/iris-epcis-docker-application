Class EPCIS.intersystems.LocatorResponseToFHIR Extends Ens.DataTransform
{

/*
{
              ownGln: 5055208442164,
              friendlyDescriptionPurpose: 'Day Room - Bickleigh Ward'
              tags: [],
              associations: [
                             {
                                           ownGln: 5055238905240,
                                           friendlyDescriptionPurpose: 'Bickleigh Ward',
                                           tags: [
                                                          {
                                                                        code: 'WARD',
                                                                        description: 'Ward'
                                                          }
                                           ],
                                           functionCode: 'RK90023',
                                           active: true,
                                           functionalType: true
                             }
              ],
              active: true,
              functionalType: false
}
*/
ClassMethod Transform(source As EnsLib.HTTP.GenericMessage, target As HS.FHIR.vSTU3.Model.Resource.Location) As %Status
{

	set tSC=$$$OK
	do source.Stream.Rewind()
	set tSC = ##class(Ens.Util.JSON).JSONStreamToObject(source.Stream, .tProxy)
	set target=##class(HS.FHIR.vSTU3.Model.Resource.Location).%New()
	
	do target.SetIdentifier(tProxy.ownGln,"http://epcis.gs1uk.org/nhs/")
	do target.SetIdentifier(tProxy.functionCode,"urn:epc:id:sgln:50552084")
	do target.SetDescription(tProxy.friendlyDescriptionPurpose)
	do target.SetName(tProxy.friendlyDescriptionPurpose)
	if tProxy.active do target.SetStatus("active")
	quit tSC
}

}
