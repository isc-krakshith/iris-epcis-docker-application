Class EPCIS.intersystems.PasQueryOperation Extends Ens.BusinessOperation
{

Parameter INVOCATION = "Queue";

Method GetDemographics(pRequest As EPCIS.intersystems.PasRequest, Output pResponse As EPCIS.intersystems.PasResponse) As %Status
{
	set tSC=$$$OK
	set tPasNumber=pRequest.PasNumber
	set tEpisode=pRequest.EpisodeNumber
	set pResponse=##class(EPCIS.intersystems.PasResponse).%New()
	&sql(select id into :id from EnsLib_HL7.Message where RawContent [ :tPasNumber and RawContent [ :tEpisode)
	
	if $get(id) {
		set tHL7=##class(EnsLib.HL7.Message).%OpenId(id)
		do tHL7.PokeDocType("2.5:ADT_A01")
		set tSC=##class(HS.Hub.Standalone.HL7.DTL.ADTA01ToSDA3).Transform(tHL7,.tSDA)
		if $isobject(tSDA) {
			set tPatient=tSDA.Patient
			set tResponse=##class(HS.FHIR.DTL.vSTU3.Model.Resource.Patient).%New()
			set tSC=##class(EPCIS.intersystems.FHIR.DTL.SDA3.vSTU3.Patient.Patient).Transform(tPatient,.tResponse)
			if $isobject(tResponse) {
				set tStream=tResponse.ToJSON()
				set pResponse.Patient=tStream
			}
			
		}
	}
	Quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="EPCIS.intersystems.PasRequest"> 
		<Method>GetDemographics</Method>
	</MapItem>
</MapItems>
}

}
