/// 
Class EPCIS.intersystems.Proxy.Patient Extends (%Persistent, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter XMLNAME = "patient";

Parameter XMLSEQUENCE = 1;

Property PKPatientId As %xsd.int(XMLNAME = "PKPatientId");

Property HospitalNumber As %String(MAXLEN = "", XMLNAME = "HospitalNumber");

Property NHSNumber As %Integer(XMLNAME = "NHSNumber");

Property PatientTitleLookUpCodeDescription As %String(MAXLEN = "", XMLNAME = "PatientTitleLookUpCodeDescription");

Property FormattedNHSNumber As %String(MAXLEN = "", XMLNAME = "FormattedNHSNumber");

Property PatientGenderLookUpCodeDescription As %String(MAXLEN = "", XMLNAME = "PatientGenderLookUpCodeDescription");

Property Surname As %String(MAXLEN = "", XMLNAME = "Surname");

Property Forename As %String(MAXLEN = "", XMLNAME = "Forename");

Property FullName As %String(MAXLEN = "", XMLNAME = "FullName");

Property IsPatientDeceased As %String(MAXLEN = "", XMLNAME = "IsPatientDeceased");

Property Forename2 As %String(MAXLEN = "", XMLNAME = "Forename2");

Property Forename3 As %String(MAXLEN = "", XMLNAME = "Forename3");

Property DateOfBirth As %String(MAXLEN = "", XMLNAME = "DateOfBirth");

Property TimeOfBirth As %String(MAXLEN = "", XMLNAME = "TimeOfBirth");

Property DateOfDeath As %String(MAXLEN = "", XMLNAME = "DateOfDeath");

Property FKLookUpCodeGenderId As %xsd.short(XMLNAME = "FKLookUpCodeGenderId");

Property FKLookUpCodeReligionId As %xsd.short(XMLNAME = "FKLookUpCodeReligionId");

Property FKLookUpCodeEthnicGroupId As %xsd.short(XMLNAME = "FKLookUpCodeEthnicGroupId");

Property FKLookUpCodeMaritalStatusId As %xsd.short(XMLNAME = "FKLookUpCodeMaritalStatusId");

Property FKMergedToPatientId As %String(MAXLEN = "", XMLNAME = "FKMergedToPatientId");

Property AddressLine1 As %String(MAXLEN = "", XMLNAME = "AddressLine1");

Property AddressLine2 As %String(MAXLEN = "", XMLNAME = "AddressLine2");

Property AddressLine3 As %String(MAXLEN = "", XMLNAME = "AddressLine3");

Property AddressLine4 As %String(MAXLEN = "", XMLNAME = "AddressLine4");

Property PostCode As %String(MAXLEN = "", XMLNAME = "PostCode");

Property HomePhone As %String(MAXLEN = "", XMLNAME = "HomePhone");

Property MobilePhone As %String(MAXLEN = "", XMLNAME = "MobilePhone");

Property WorkPhone As %String(MAXLEN = "", XMLNAME = "WorkPhone");

Property FKGpPracticeId As %xsd.short(XMLNAME = "FKGpPracticeId");

Property FKGpId As %xsd.int(XMLNAME = "FKGpId");

Property NHSNumberStatus As %xsd.byte(XMLNAME = "NHSNumberStatus");

Property FKLookUpCodeBirthOrderId As %xsd.short(XMLNAME = "FKLookUpCodeBirthOrderId");

Property BirthOrderLookUpCodeDescription As %String(MAXLEN = "", XMLNAME = "BirthOrderLookUpCodeDescription");

Property GPStartDateTime As %String(MAXLEN = "", XMLNAME = "GPStartDateTime");

Property MothersHospitalNumber As %String(MAXLEN = "", XMLNAME = "MothersHospitalNumber");

Property LogicallyDeleted As %String(MAXLEN = "", XMLNAME = "LogicallyDeleted");

Property CreatedDateTime As %String(MAXLEN = "", XMLNAME = "CreatedDateTime");

Property ModifiedDateTime As %String(MAXLEN = "", XMLNAME = "ModifiedDateTime");

Property Age As %Integer(XMLNAME = "Age");

Property Sex As %String(XMLNAME = "Sex");

Property FullAddress As %String(MAXLEN = "", XMLNAME = "FullAddress");

Property IsRAPAPatient As %String(MAXLEN = "", XMLNAME = "IsRAPAPatient");

Property IsRepeatPatientAlert As %String(MAXLEN = "", XMLNAME = "IsRepeatPatientAlert");

Property IsRepeatAdmission As %String(MAXLEN = "", XMLNAME = "IsRepeatAdmission");

Property CarerSurname As %String(MAXLEN = "", XMLNAME = "CarerSurname");

Property EthnicGroupDecription As %String(MAXLEN = "", XMLNAME = "EthnicGroupDecription");

Storage Default
{
<Data name="PatientDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PKPatientId</Value>
</Value>
<Value name="3">
<Value>HospitalNumber</Value>
</Value>
<Value name="4">
<Value>NHSNumber</Value>
</Value>
<Value name="5">
<Value>PatientTitleLookUpCodeDescription</Value>
</Value>
<Value name="6">
<Value>FormattedNHSNumber</Value>
</Value>
<Value name="7">
<Value>PatientGenderLookUpCodeDescription</Value>
</Value>
<Value name="8">
<Value>Surname</Value>
</Value>
<Value name="9">
<Value>Forename</Value>
</Value>
<Value name="10">
<Value>FullName</Value>
</Value>
<Value name="11">
<Value>IsPatientDeceased</Value>
</Value>
<Value name="12">
<Value>Forename2</Value>
</Value>
<Value name="13">
<Value>Forename3</Value>
</Value>
<Value name="14">
<Value>DateOfBirth</Value>
</Value>
<Value name="15">
<Value>TimeOfBirth</Value>
</Value>
<Value name="16">
<Value>DateOfDeath</Value>
</Value>
<Value name="17">
<Value>FKLookUpCodeGenderId</Value>
</Value>
<Value name="18">
<Value>FKLookUpCodeReligionId</Value>
</Value>
<Value name="19">
<Value>FKLookUpCodeEthnicGroupId</Value>
</Value>
<Value name="20">
<Value>FKLookUpCodeMaritalStatusId</Value>
</Value>
<Value name="21">
<Value>FKMergedToPatientId</Value>
</Value>
<Value name="22">
<Value>AddressLine1</Value>
</Value>
<Value name="23">
<Value>AddressLine2</Value>
</Value>
<Value name="24">
<Value>AddressLine3</Value>
</Value>
<Value name="25">
<Value>AddressLine4</Value>
</Value>
<Value name="26">
<Value>PostCode</Value>
</Value>
<Value name="27">
<Value>HomePhone</Value>
</Value>
<Value name="28">
<Value>MobilePhone</Value>
</Value>
<Value name="29">
<Value>WorkPhone</Value>
</Value>
<Value name="30">
<Value>FKGpPracticeId</Value>
</Value>
<Value name="31">
<Value>FKGpId</Value>
</Value>
<Value name="32">
<Value>NHSNumberStatus</Value>
</Value>
<Value name="33">
<Value>FKLookUpCodeBirthOrderId</Value>
</Value>
<Value name="34">
<Value>BirthOrderLookUpCodeDescription</Value>
</Value>
<Value name="35">
<Value>GPStartDateTime</Value>
</Value>
<Value name="36">
<Value>MothersHospitalNumber</Value>
</Value>
<Value name="37">
<Value>LogicallyDeleted</Value>
</Value>
<Value name="38">
<Value>CreatedDateTime</Value>
</Value>
<Value name="39">
<Value>ModifiedDateTime</Value>
</Value>
<Value name="40">
<Value>Age</Value>
</Value>
<Value name="41">
<Value>Sex</Value>
</Value>
<Value name="42">
<Value>FullAddress</Value>
</Value>
<Value name="43">
<Value>IsRAPAPatient</Value>
</Value>
<Value name="44">
<Value>IsRepeatPatientAlert</Value>
</Value>
<Value name="45">
<Value>IsRepeatAdmission</Value>
</Value>
<Value name="46">
<Value>CarerSurname</Value>
</Value>
<Value name="47">
<Value>EthnicGroupDecription</Value>
</Value>
</Data>
<DataLocation>^EPCIS.intersystems1C01.PatientD</DataLocation>
<DefaultData>PatientDefaultData</DefaultData>
<IdLocation>^EPCIS.intersystems1C01.PatientD</IdLocation>
<IndexLocation>^EPCIS.intersystems1C01.PatientI</IndexLocation>
<StreamLocation>^EPCIS.intersystems1C01.PatientS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
