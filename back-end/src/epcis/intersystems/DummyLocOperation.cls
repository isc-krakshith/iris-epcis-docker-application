Class EPCIS.intersystems.DummyLocOperation Extends Ens.BusinessOperation
{

Parameter INVOCATION = "Queue";

/*
RK95034^^68^Derriford Hospital\T\RK950\T\HOSPT^^WARD^^^Monkswell Ward, Zone E, Level 10

RK9 = Plymouth -> 50552084
Ward Code RK95034 -> 095034 (which is probably not real)

Barcode response:  Derriford Hospital, Hospital Location Code

	set pResponse=##class(HS.FHIR.Model.Resource.Location).%New()
	set tid=##class(HS.FHIR.Model.Base.Identifier).%New()
	set thospital=$extract(pRequest.GetValueAt("PV1:3.1"),1,3)
	set tid.value=$case(thospital,"RK9":50552084)_".0"_$extract(pRequest.GetValueAt("PV1:3.1"),3,7)_"."_+pRequest.GetValueAt("PV1:3.3")
	set name=##class(HS.FHIR.Model.Datatype.String).%New()
	set name.value=pRequest.GetValueAt("PV1:3.9")	
*/

/*
<Location>
<identifier><system value="http://epcis.gs1uk.org/nhs/"></system><value value="50552084000950346"></value></identifier>
<identifier><system value="urn:epc:id:sgln:50552084"></system><value value="RK95034"></value></identifier><status value="active"></status>
<name value="Monkswell Ward, Zone E, Level 10"></name><description value="Monkswell Ward, Zone E, Level 10"></description>
</Location>
*/
Method getLocation(pRequest As EPCIS.intersystems.LocationRequest, Output pResponse As HS.Message.FHIR.Response) As %Status
{
	set tSC=$$$OK
	set pResponse=##class(HS.Message.FHIR.Response).%New()
	// Bed location will be a separate code, and check digit in this case is 6
	if ($i(^LOC)'=10) { 
	set pRequest.Code="50552084.000950346"
	set tFHIR=##class(HS.FHIR.vSTU3.Model.Resource.Location).%New()
	do tFHIR.SetIdentifier($zstrip(pRequest.Code,"*P"),"http://epcis.gs1uk.org/nhs/")
	do tFHIR.SetIdentifier("RK95034","urn:epc:id:sgln:50552084")
	do tFHIR.SetStatus("active")
	
	do tFHIR.SetName("Derriford Hospital,Monkswell Ward,Zone E,Level 10")
	do tFHIR.SetDescription("Derriford Hospital,Monkswell Ward,Zone E,Level 10")

	} else {
		set pRequest.Code="50552084.000950377"
		set tFHIR=##class(HS.FHIR.vSTU3.Model.Resource.Location).%New()
		do tFHIR.SetIdentifier("urn:epc:id:sgln:"_pRequest.Code)
		do tFHIR.SetName("Derriford Hospital, Morgue, Zone A, Level 1")
	}
	do tFHIR.XMLExportToStream(.tStream)
	set pResponse.Payload=tStream
	if ^LOC=10 kill ^LOC
	Quit tSC
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="EPCIS.intersystems.LocationRequest"> 
		<Method>getLocation</Method>
	</MapItem>
</MapItems>
}

}
