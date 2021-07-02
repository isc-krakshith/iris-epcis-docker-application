/// Transforms SDA3 HS.SDA3.Encounter to vSTU3 Encounter
Class HS.Local.FHIR.DTL.SDA3.vSTU3.Encounter.Encounter Extends Ens.DataTransformDTL [ DependsOn = (HS.SDA3.Encounter, HS.FHIR.DTL.vSTU3.Model.Resource.Encounter), ProcedureBlock ]
{

/// This DTL XData block was generated. Do not modify it.
XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.SDA3.Encounter' targetClass='HS.FHIR.DTL.vSTU3.Model.Resource.Encounter' create='existing' language='objectscript' >
  <annotation>
    <![CDATA[ Transforms HS.SDA3.Encounter (SDA3) to Encounter (vSTU3) ]]>
  </annotation>
<if condition='((source.EncounterType = "I") &amp;&amp; &apos;(source.FromTime ] $zdatetime($horolog, 3)))'> 
<true>
<assign value='"finished"' property='target.status' action='set' >
<annotation>
<![CDATA[ planned | arrived | triaged | in-progress | onleave | finished | cancelled + ]]>
</annotation>
</assign>
</true>
</if>
<if condition='((source.EncounterType = "I") &amp;&amp; (source.FromTime ] $zdatetime($horolog, 3)))'> 
<true>
<assign value='"planned"' property='target.status' action='set' >
<annotation>
<![CDATA[ planned | arrived | triaged | in-progress | onleave | finished | cancelled + ]]>
</annotation>
</assign>
</true>
</if>
<if condition='(##class(HS.FHIR.DTL.Util.Lookup).Code("SDA3","vSTU3","HS.SDA3.Encounter:EncounterType","v3-ActEncounterCode",source.EncounterType) &apos;= "")'> 
<true>
<assign value='"http://hl7.org/fhir/v3/ActCode"' property='target.class.system' action='set' >
<annotation>
<![CDATA[ Identity of the terminology system
 --- This target is one field within a Coding object assigned to the target Encounter:class.    ]]>
</annotation>
</assign>
</true>
</if>
<if condition='source.TransferredFromED = 1'> 
<true>
<assign value='"emd"' property='target.hospitalization.admitSource.coding.(1).code' action='set' >
<annotation>
<![CDATA[ From where patient was admitted (physician referral, transfer)
 --- This target is one field within a CodeableConcept object assigned to the target Encounter:hospitalization.admitSource.    ]]>
</annotation>
</assign>
</true>
</if>
<if condition='source.TransferredFromED = 1'> 
<true>
<assign value='"From accident/emergency department"' property='target.hospitalization.admitSource.coding.(1).display' action='set' >
<annotation>
<![CDATA[ Representation defined by the system
 --- This target is one field within a CodeableConcept object assigned to the target Encounter:hospitalization.admitSource.    ]]>
</annotation>
</assign>
</true>
</if>
<if condition='source.TransferredFromED = 1'> 
<true>
<assign value='"http://hl7.org/fhir/admit-source"' property='target.hospitalization.admitSource.coding.(1).system' action='set' >
<annotation>
<![CDATA[ Identity of the terminology system
 --- This target is one field within a CodeableConcept object assigned to the target Encounter:hospitalization.admitSource.    ]]>
</annotation>
</assign>
</true>
</if>
<assign value='##class(HS.FHIR.DTL.Util.SDA3.Handler.CustomPairs).Extension(source.CustomPairs, .target)' property='value' action='set' />
<assign value='target.extension.Count()+1' property='index' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-custom-pairs"' property='value.url' action='set' />
<assign value='value' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations
 --- When the SDA3 source data contains a CustomPairs collection, and the target is FHIR, the collection is mapped to a FHIR extension that contains a Parameters resource. This Parameters resource is a collection of paired fields: name and valueString.   ]]>
</annotation>
</assign></true> 
</if> 
<if condition='((source.EncounterType &apos;= "I") &amp;&amp; ($zdatetime($horolog, 3) ] source.FromTime))'> 
<true>
<assign value='"finished"' property='target.status' action='set' >
<annotation>
<![CDATA[ planned | arrived | triaged | in-progress | onleave | finished | cancelled + ]]>
</annotation>
</assign>
</true>
</if>
<if condition='((source.EncounterType &apos;= "I") &amp;&amp; &apos;($zdatetime($horolog, 3) ] source.FromTime))'> 
<true>
<assign value='"unknown"' property='target.status' action='set' >
<annotation>
<![CDATA[ planned | arrived | triaged | in-progress | onleave | finished | cancelled + ]]>
</annotation>
</assign>
</true>
</if>
<if condition='&apos;##class(HS.FHIR.DTL.Util.Mapping).Exclude("ODS")'> 
<true>
<assign value='##class(HS.FHIR.DTL.Util.SDA3.Handler.Patient).Reference(aux("callbackObject"))' property='value' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.subject' action='set' >
<annotation>
<![CDATA[ The patient ro group present at the encounter
 --- Public API methods have a specific purpose for this field-to-field mapping. When internal system utilities invoke the DTL class for this transformation, they skip the <assign> statement generated by this mapping. The transformation produces the same target object in either case.   ]]>
</annotation>
</assign></true> 
</if> 
</true>
</if>
<if condition='source.AccountNumber&apos;=""'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.AccountNumber,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-account-number"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='&apos;source.TransferredFromED'> 
<true>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "AdmissionSource")'> 
<true>
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Datatype.CodeableConcept).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableTranslated.CodeableConcept",source.AdmissionSource,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.hospitalization.admitSource' action='set'  >
<annotation>
<![CDATA[ From where patient was admitted (physician referral, transfer)
 --- In this case, encounter-admit-source is the Preferred FHIR3 ValueSet for codes, but if you need to express meanings not found in encounter-admit-source, you may use codes from any ValueSet. 
 --- SDA does not restrict code values to a particular set.    ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "AdmissionType")'> 
<true>
<assign value='target.type.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Datatype.CodeableConcept).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableTranslated.CodeableConcept",source.AdmissionType,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.type' action='set' key='index'  >
<annotation>
<![CDATA[ Specific type of encounter
 --- In this case, any FHIR3 code may be used; encounter-type shows Example codes, but you may use codes from any ValueSet. 
 --- SDA does not restrict code values to a particular set.    ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "AdmitReason")'> 
<true>
<assign value='target.reason.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Datatype.CodeableConcept).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableTranslated.CodeableConcept",source.AdmitReason,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.reason' action='set' key='index'  >
<annotation>
<![CDATA[ Reason the encounter takes place (code)
 --- In this case, encounter-reason is the Preferred FHIR3 ValueSet for codes, but if you need to express meanings not found in encounter-reason, you may use codes from any ValueSet. 
 --- SDA does not restrict code values to a particular set.    ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "AdmittingClinician")'> 
<true>
<assign value='##class(HS.FHIR.DTL.Util.SDA3.Handler.Encounter).Clinician(source.AdmittingClinician, "ADM", .target)' property='value' action='set' />
<assign value='target.participant.Count()+1' property='index' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.participant' action='set' key='index'  >
<annotation>
<![CDATA[ List of participants involved in the encounter ]]>
</annotation>
</assign></true> 
</if> </true> 
</if>
<if condition='source.AssignedBed&apos;=""'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='target.hospitalization&apos;=""'> 
<true> 
<assign value='target.hospitalization.extension.Count()+1' property='index' action='set' />
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.AssignedBed,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-assigned-bed"' property='tmp.url' action='set' />
<assign value='tmp' property='target.hospitalization.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='source.AssignedRoom&apos;=""'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='target.hospitalization&apos;=""'> 
<true> 
<assign value='target.hospitalization.extension.Count()+1' property='index' action='set' />
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.AssignedRoom,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-assigned-room"' property='tmp.url' action='set' />
<assign value='tmp' property='target.hospitalization.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='source.AssignedWard&apos;=""'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='target.hospitalization&apos;=""'> 
<true> 
<assign value='target.hospitalization.extension.Count()+1' property='index' action='set' />
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.AssignedWard,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-assigned-ward"' property='tmp.url' action='set' />
<assign value='tmp' property='target.hospitalization.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<foreach property='source.AttendingClinicians()' key='st' >
<assign value='##class(HS.FHIR.DTL.Util.SDA3.Handler.Encounter).Clinician(source.AttendingClinicians.GetAt(st), "ATND", .target)' property='value' action='set' />
<assign value='target.participant.Count()+1' property='index' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.participant' action='set' key='index'  >
<annotation>
<![CDATA[ List of participants involved in the encounter ]]>
</annotation>
</assign></true> 
</if> </foreach>
<foreach property='source.ConsultingClinicians()' key='st' >
<assign value='##class(HS.FHIR.DTL.Util.SDA3.Handler.Encounter).Clinician(source.ConsultingClinicians.GetAt(st), "CON", .target)' property='value' action='set' />
<assign value='target.participant.Count()+1' property='index' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.participant' action='set' key='index'  >
<annotation>
<![CDATA[ List of participants involved in the encounter ]]>
</annotation>
</assign></true> 
</if> </foreach>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "DiagnosisRelatedGroup")'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableTranslated.Extension",source.DiagnosisRelatedGroup,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-diagnosis-related-group"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "DischargeLocation")'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='target.hospitalization&apos;=""'> 
<true> 
<assign value='target.hospitalization.extension.Count()+1' property='index' action='set' />
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableTranslated.Extension",source.DischargeLocation,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-discharge-location"' property='tmp.url' action='set' />
<assign value='tmp' property='target.hospitalization.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<if condition='source.EmergencyAdmitDateTime&apos;=""'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.TimeStamp.Extension",source.EmergencyAdmitDateTime,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-emergency-admit-date-time"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "EncounterCodedType")'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableTranslated.Extension",source.EncounterCodedType,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-encounter-coded-type"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<if condition='source.EncounterMRN&apos;=""'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.EncounterMRN,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-encounter-m-r-n"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='source.EncounterMRNAA&apos;=""'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.EncounterMRNAA,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-encounter-m-r-n-a-a"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<assign value='##class(HS.FHIR.DTL.Util.Element.Object).StringToIdentifier(source.EncounterNumber,"EncounterNumber")' property='value' action='set' />
<assign value='target.identifier.Count()+1' property='index' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.identifier' action='set' key='index'  >
<annotation>
<![CDATA[ Identifier(s) by which this encounter is known ]]>
</annotation>
</assign></true> 
</if> 
<if condition='&apos;##class(HS.FHIR.DTL.Util.Mapping).Exclude("ODS")'> 
<true>
<assign value='##class(HS.FHIR.DTL.Util.SDA3.Handler.ExternalId).AssignResourceId("Encounter", source.EncounterNumber, aux("callbackObject"))' property='value' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.id' action='set' >
<annotation>
<![CDATA[ Logical id of this artifact
 --- Public API methods have a specific purpose for this field-to-field mapping. When internal system utilities invoke the DTL class for this transformation, they skip the <assign> statement generated by this mapping. The transformation produces the same target object in either case.   ]]>
</annotation>
</assign></true> 
</if> 
</true>
</if>
<assign value='##class(HS.FHIR.DTL.Util.Lookup).Code("SDA3","vSTU3","HS.SDA3.Encounter:EncounterType","v3-ActEncounterCode",source.EncounterType)' property='value' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.class.code' action='set' >
<annotation>
<![CDATA[ Code values that qualify the encounter (AMB - ambulatory, EMER - emergency, etc.)
 --- This mapping entry seeks a lookup table entry that can match a source value with a target value for this field. If the mapping cannot find the lookup table, or cannot find a matching entry in the lookup table, and it has a non-empty Default Value defined, it places its Default Value into the target field. Otherwise, the target receive no value from this mapping. 
 --- If the mapping is SDA to FHIR, and the source field contains a non-empty value, then by convention there are two mapping entries for this source field. Both entries execute under the same Condition to Set this Field. One entry does the lookup to retrieve the value to assign to the target field. The other stores the original source field value in a FHIR extension.    ]]>
</annotation>
</assign></true> 
<false> 
<assign value='"AMB"' property='target.class.code' action='set' />
</false> 
</if> 
<if condition='source.EncounterType&apos;=""'> 
<true>
<if condition='(##class(HS.FHIR.DTL.Util.Lookup).Code("SDA3","vSTU3","HS.SDA3.Encounter:EncounterType","v3-ActEncounterCode",source.EncounterType) = "")'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.EncounterType,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-encounter-type"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations
 --- This mapping supports a related mapping that does a table lookup to match the incoming source value with a value to place in the target field. This mapping has the same Condition to Set this Field as the table lookup. If the lookup successfully finds a value for target field, this mapping stores the original source field value in a FHIR extension.    ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
</true>
</if>
<if condition='source.EndTime&apos;=""'> 
<true>
<assign value='##class(HS.FHIR.DTL.Util.Element.TypeCast).DateToFHIR(source.EndTime, "dateTime")' property='value' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.period.end' action='set' >
<annotation>
<![CDATA[ End time with inclusive boundary, if not ongoing
Note: Encounter uses EndTime for period.end since it will always be populated with ambulatory encounters and it is ok if an inpatient encounter has no end time. EndTime is a calculated property in SDA for ambulatory encounters to ensure that ambulatory encounters are closed and don't clutter up the clinical viewer timeline. ]]>
</annotation>
</assign></true> 
</if> 
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "EnteredAt")'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableDetail.Organization.Extension",source.EnteredAt,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-entered-at"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "EnteredBy")'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableDetail.Extension",source.EnteredBy,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-entered-by"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<if condition='source.EnteredOn&apos;=""'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.TimeStamp.Extension",source.EnteredOn,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-entered-on"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='source.ExpectedAdmitTime&apos;=""'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.TimeStamp.Extension",source.ExpectedAdmitTime,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-expected-admit-time"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='source.ExpectedDischargeTime&apos;=""'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.TimeStamp.Extension",source.ExpectedDischargeTime,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-expected-discharge-time"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='source.ExpectedLOAReturnTime&apos;=""'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.TimeStamp.Extension",source.ExpectedLOAReturnTime,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-expected-l-o-a-return-time"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<assign value='##class(HS.FHIR.DTL.Util.SDA3.Handler.ExternalId).Identifier(source.ExternalId)' property='value' action='set' />
<assign value='target.identifier.Count()+1' property='index' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.identifier' action='set' key='index'  >
<annotation>
<![CDATA[ Identifier(s) by which this encounter is known ]]>
</annotation>
</assign></true> 
</if> 
<if condition='source.FromTime&apos;=""'> 
<true>
<assign value='##class(HS.FHIR.DTL.Util.Element.TypeCast).DateToFHIR(source.FromTime, "dateTime")' property='value' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.period.start' action='set' >
<annotation>
<![CDATA[ Starting time with inclusive boundary ]]>
</annotation>
</assign></true> 
</if> 
</true>
</if>
<foreach property='source.Guarantors()' key='st' >
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Guarantor.Extension",source.Guarantors.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-guarantors"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "HealthCareFacility")'> 
<true>
<assign value='target.newResource.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Resource.Organization).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableDetail.HealthCareFacility.Organization",source.HealthCareFacility,.tmp,.aux)' property='status' action='set' />
<code>
<![CDATA[  if $listvalid(target.newResourceReference) { set target.newResourceReference = $listupdate(target.newResourceReference, $listlength(target.newResourceReference) + 1, "serviceProvider") } 
 else { set target.newResourceReference = $listbuild("serviceProvider") } ]]></code>
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.newResource' action='set' key='index'  >
<annotation>
<![CDATA[ The custodian organization of this Encounter record ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<foreach property='source.HealthFunds()' key='st' >
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.HealthFund.Extension",source.HealthFunds.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-health-funds"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<if condition='source.PreAdmissionNumber&apos;=""'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='target.hospitalization&apos;=""'> 
<true> 
<assign value='target.hospitalization.extension.Count()+1' property='index' action='set' />
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.PreAdmissionNumber,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-pre-admission-number"' property='tmp.url' action='set' />
<assign value='tmp' property='target.hospitalization.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='source.PriorBed&apos;=""'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='target.hospitalization&apos;=""'> 
<true> 
<assign value='target.hospitalization.extension.Count()+1' property='index' action='set' />
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.PriorBed,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-prior-bed"' property='tmp.url' action='set' />
<assign value='tmp' property='target.hospitalization.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "Priority")'> 
<true>
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Datatype.CodeableConcept).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableTranslated.CodeableConcept",source.Priority,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.priority' action='set'  >
<annotation>
<![CDATA[ Indicates the urgency of the encounter
 --- In this case, any FHIR3 code may be used; v3-ActPriority shows Example codes, but you may use codes from any ValueSet. 
 --- SDA does not restrict code values to a particular set.    ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<if condition='source.PriorRoom&apos;=""'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='target.hospitalization&apos;=""'> 
<true> 
<assign value='target.hospitalization.extension.Count()+1' property='index' action='set' />
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.PriorRoom,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-prior-room"' property='tmp.url' action='set' />
<assign value='tmp' property='target.hospitalization.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='source.PriorVisitNumber&apos;=""'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.PriorVisitNumber,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-prior-visit-number"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='source.PriorWard&apos;=""'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='target.hospitalization&apos;=""'> 
<true> 
<assign value='target.hospitalization.extension.Count()+1' property='index' action='set' />
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.PriorWard,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-prior-ward"' property='tmp.url' action='set' />
<assign value='tmp' property='target.hospitalization.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "PublicityCode")'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableTranslated.Extension",source.PublicityCode,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-publicity-code"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<if condition='source.RecommendationsProvided&apos;=""'>
<true>
<assign value='1' property='j1' action='set' />
<foreach property='source.RecommendationsProvided()' key='k1' >
<if condition='source.RecommendationsProvided.(k1).NoteText&apos;=""'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.RecommendationsProvided.(k1).NoteText,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-recommendations-provided-note-text"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<foreach property='source.RecommendationsProvided.(k1).RecipientOrganizations()' key='st' >
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableDetail.HealthCareFacility.Extension",source.RecommendationsProvided.(k1).RecipientOrganizations.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-recommendations-provided-recipient-organizations"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.RecommendationsProvided.(k1).RecipientPersons()' key='st' >
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableDetail.CareProvider.Extension",source.RecommendationsProvided.(k1).RecipientPersons.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-recommendations-provided-recipient-persons"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>
</foreach>
</foreach>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "ReferringClinician")'> 
<true>
<assign value='##class(HS.FHIR.DTL.Util.SDA3.Handler.Encounter).Clinician(source.ReferringClinician, "REF", .target)' property='value' action='set' />
<assign value='target.participant.Count()+1' property='index' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.participant' action='set' key='index'  >
<annotation>
<![CDATA[ List of participants involved in the encounter ]]>
</annotation>
</assign></true> 
</if> </true> 
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "SeparationMode")'> 
<true>
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Datatype.CodeableConcept).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableTranslated.CodeableConcept",source.SeparationMode,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.hospitalization.dischargeDisposition' action='set'  >
<annotation>
<![CDATA[ Category or kind of location after discharge
 --- In this case, any FHIR3 code may be used; encounter-discharge-disposition shows Example codes, but you may use codes from any ValueSet. 
 --- SDA does not restrict code values to a particular set.    ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<foreach property='source.Specialties()' key='st' >
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableDetail.Extension",source.Specialties.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-specialties"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<if condition='source.ToTime&apos;=""'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.TimeStamp.Extension",source.ToTime,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-to-time"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='source.TransferredFromED&apos;=""'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.Boolean.Extension",source.TransferredFromED,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-transferred-from-e-d"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='source.VisitDescription&apos;=""'> 
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.VisitDescription,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/encounter-visit-description"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='##class(%Dictionary.ClassDefinition).%ExistsId("HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.Encounter.Encounter")'> 
<true>
<code><![CDATA[  lock +^HS.FHIR.DTL("lock", "HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.Encounter.Encounter") ]]></code>
<assign value='##class(HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.Encounter.Encounter).Transform(source.Extension, .target, .aux)' property='target' action='set' />
<code><![CDATA[  lock -^HS.FHIR.DTL("lock", "HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.Encounter.Encounter") ]]></code>
</true>
</if>
</transform>
}

}
