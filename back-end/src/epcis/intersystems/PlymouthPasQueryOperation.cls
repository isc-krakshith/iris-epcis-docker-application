Class EPCIS.intersystems.PlymouthPasQueryOperation Extends EnsLib.REST.Operation
{

/*

{"PKPatientId":277558,"HospitalNumber":"F001001","NHSNumber":"2222222222","PatientTitleLookUpCodeDescription":"Mr","FormattedNHSNumber":"222-222-2222","PatientGenderLookUpCodeDescription":"Male","Surname":"Briggs","Forename":"Joseph","FullName":"Mr Joseph Briggs","IsPatientDeceased":false,"Forename2":null,"Forename3":null,"DateOfBirth":"\/Date(1301526000000)\/","TimeOfBirth":null,"DateOfDeath":null,"FKLookUpCodeGenderId":1482,"FKLookUpCodeReligionId":2717,"FKLookUpCodeEthnicGroupId":16243,"FKLookUpCodeMaritalStatusId":875,"FKMergedToPatientId":null,"AddressLine1":"123 Test Rd","AddressLine2":"Line2","AddressLine3":"Line3","AddressLine4":"Line4","PostCode":"AA1 1AA","HomePhone":null,"MobilePhone":null,"WorkPhone":null,"FKGpPracticeId":8349,"FKGpId":172138,"NHSNumberStatus":"01","FKLookUpCodeBirthOrderId":745,"BirthOrderLookUpCodeDescription":null,"GPStartDateTime":"\/Date(1409439600000)\/","MothersHospitalNumber":null,"LogicallyDeleted":false,"CreatedDateTime":"\/Date(934340820000)\/","ModifiedDateTime":"\/Date(1505752380000)\/","Age":8,"Sex":1,"FullAddress":"123 Test Rd, Line 2, Line 3, Line 4, AA1 1AA","IsRAPAPatient":false,"IsRepeatPatientAlert":false,"IsRepeatAdmission":false,"CarerSurname":"Brown","EthnicGroupDecription":null}
https://salusuat.plymouth.nhs.uk/Web/Mobile/GetPatientFromHospitalNumber?hospitalNumber={HOSPITAL_NUMBER}
*/
Method GetDemographics(pRequest As EPCIS.intersystems.PasRequest, Output pResponse As EPCIS.intersystems.PasResponse) As %Status
{
	set tSC=$$$OK
	set tURL=..Adapter.URL_"?hospitalNumber="_pRequest.PasNumber
	set tSC=..Adapter.GetURL(tURL,.tHttpResponse)
	// Return the response
    If $$$ISERR(tSC)&&$IsObject(tHttpResponse)&&$IsObject(tHttpResponse.Data)&&tHttpResponse.Data.Size {
         Set tSC=$$$ERROR($$$EnsErrGeneral,$$$StatusDisplayString(tSC)_":"_tHttpResponse.Data.Read())
      }
    Quit:$$$ISERR(tSC)
    
    set pResponse=##class(EPCIS.intersystems.PasResponse).%New()
    
	set tSC = ##class(Ens.Util.JSON).JSONStreamToObject(tHttpResponse.Data, .tProxy)
	set tHL7=##class(EnsLib.HL7.Message).%New()
	do tHL7.PokeDocType("2.5:ADT_A01")
	do tHL7.SetValueAt(tProxy.NHSNumber,"PID:3(1).1")
	do tHL7.SetValueAt("NHS","PID:3(1).5")
	do tHL7.SetValueAt(tProxy.HospitalNumber,"PID:3(2).1")
	do tHL7.SetValueAt("PAS","PID:3(1).5")
	do tHL7.SetValueAt(tProxy.Surname,"PID:5(1).1")
	do tHL7.SetValueAt(tProxy.Forename,"PID:5(1).2")
	do tHL7.SetValueAt(($extract($zcvt(tProxy.PatientGenderLookUpCodeDescription,"L"))),"PID:8")
	
	
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
	quit tSC
}

XData MessageMap
{
<MapItems>
  <MapItem MessageType="EPCIS.intersystems.PasRequest">
    <Method>GetDemographics</Method>
  </MapItem>
</MapItems>
}

/// The adapter instance
Property Adapter As EnsLib.HTTP.OutboundAdapter;

}
