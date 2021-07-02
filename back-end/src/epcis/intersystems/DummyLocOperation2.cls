Class EPCIS.intersystems.DummyLocOperation2 Extends Ens.BusinessOperation
{

Parameter INVOCATION = "Queue";

/*
RK95034^^68^Derriford Hospital\T\RK950\T\HOSPT^^WARD^^^Monkswell Ward, Zone E, Level 10

RK9 = Plymouth -> 50552084
Ward Code RK95034 -> 095034 (which is probably not real)

Barcode response:  Derriford Hospital, Hospital Locator Code

	set pResponse=##class(HS.FHIR.Model.Resource.Locator).%New()
	set tid=##class(HS.FHIR.Model.Base.Identifier).%New()
	set thospital=$extract(pRequest.GetValueAt("PV1:3.1"),1,3)
	set tid.value=$case(thospital,"RK9":50552084)_".0"_$extract(pRequest.GetValueAt("PV1:3.1"),3,7)_"."_+pRequest.GetValueAt("PV1:3.3")
	set name=##class(HS.FHIR.Model.Datatype.String).%New()
	set name.value=pRequest.GetValueAt("PV1:3.9")	
*/

/*
<Locator>
<identifier><system value="http://epcis.gs1uk.org/nhs/"></system><value value="50552084000950346"></value></identifier>
<identifier><system value="urn:epc:id:sgln:50552084"></system><value value="RK95034"></value></identifier><status value="active"></status>
<name value="Monkswell Ward, Zone E, Level 10"></name><description value="Monkswell Ward, Zone E, Level 10"></description>
</Locator>
*/
Method getLocator(pRequest As EPCIS.intersystems.LocatorRequest, Output pResponse As EnsLib.HTTP.GenericMessage) As %Status
{
	set tSC=$$$OK
	set pResponse=##class(EnsLib.HTTP.GenericMessage).%New()
 
 	set string="{ownGln:5055238905340,friendlyDescriptionPurpose:'Monkswell Ward',tags:[{code:'WARD',description:'Ward'}],functionCode:'RK90023',active:true,functionalType:true}"
	set stream=##class(%GlobalCharacterStream).%New()
	do stream.Write(string)
	do stream.Rewind()
	do pResponse.StreamSet(stream)
	Quit tSC
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="EPCIS.intersystems.LocatorRequest"> 
		<Method>getLocator</Method>
	</MapItem>
</MapItems>
}

}
