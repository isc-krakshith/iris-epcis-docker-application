/// Transforms SDA3 HS.SDA3.Patient to vSTU3 Patient
Class EPCIS.intersystems.FHIR.DTL.SDA3.vSTU3.Patient.Patient Extends Ens.DataTransformDTL [ DependsOn = (HS.SDA3.Patient, HS.FHIR.DTL.vSTU3.Model.Resource.Patient), ProcedureBlock ]
{

Parameter IGNOREMISSINGSOURCE = 0;

Parameter REPORTERRORS = 0;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.SDA3.Patient' targetClass='HS.FHIR.DTL.vSTU3.Model.Resource.Patient' create='existing' language='objectscript' >
<annotation> Transforms HS.SDA3.Patient (SDA3) to Patient (vSTU3) </annotation>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source,"MaritalStatus") &amp;&amp; (##class(HS.FHIR.DTL.Util.Lookup).Code("SDA3","vSTU3","HS.SDA3.CodeTableDetail.MaritalStatus","marital-status",source.MaritalStatus) &apos;= "") &amp;&amp; (##class(HS.FHIR.DTL.Util.Lookup).Code("SDA3","vSTU3","HS.SDA3.CodeTableDetail.MaritalStatus","marital-status",source.MaritalStatus) &apos;= "UNK")' >
<true>
<assign value='"http://hl7.org/fhir/v3/MaritalStatus"' property='target.maritalStatus.coding.(1).system' action='set' >
<annotation> Identity of the terminology system
 --- This target is one field within a CodeableConcept object assigned to the target Patient:maritalStatus.    </annotation>
</assign>
</true>
</if>
<assign value='##class(HS.FHIR.DTL.Util.SDA3.Handler.CustomPairs).Extension(source.CustomPairs, .target)' property='value' action='set' />
<assign value='target.extension.Count()+1' property='index' action='set' />
<if condition='value&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-custom-pairs"' property='value.url' action='set' />
<assign value='value' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations
Note: CustomPairs for this streamlet (and every streamlet) are stored in an extension which will link to a contained Parameters resource, with the list of name value pairs
 --- When the SDA3 source data contains a CustomPairs collection, and the target is FHIR, the collection is mapped to a FHIR extension that contains a Parameters resource. This Parameters resource is a collection of paired fields: name and valueString.   </annotation>
</assign>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source,"MaritalStatus") &amp;&amp; (##class(HS.FHIR.DTL.Util.Lookup).Code("SDA3","vSTU3","HS.SDA3.CodeTableDetail.MaritalStatus","marital-status",source.MaritalStatus) = "UNK")' >
<true>
<assign value='"http://hl7.org/fhir/v3/NullFlavor"' property='target.maritalStatus.coding.(1).system' action='set' >
<annotation> Identity of the terminology system
 --- This target is one field within a CodeableConcept object assigned to the target Patient:maritalStatus.    </annotation>
</assign>
</true>
</if>
<foreach property='source.Addresses()' key='st' >
<assign value='target.address.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Datatype.Address).%New()' property='tmp' action='set' />
<subtransform class='HS.FHIR.DTL.SDA3.vSTU3.Address.Address' targetObj='tmp' sourceObj='source.Addresses.(st)' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='tmp' property='target.address' action='set' key='index' >
<annotation> Addresses for the individual </annotation>
</assign>
</true>
</if>
</foreach>
<foreach property='source.Aliases()' key='st' >
<assign value='target.name.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Datatype.HumanName).%New()' property='tmp' action='set' />
<if condition='tmp&apos;=""' >
<true>
<assign value='tmp' property='target.name' action='set' key='index' >
<annotation> A name associated with the patient </annotation>
</assign>
</true>
</if>
</foreach>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "BirthGender")' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='EPCIS.intersystems.FHIR.DTL.SDA3.vSTU3.CodeTableTranslated.Extension' targetObj='tmp' sourceObj='source.BirthGender' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-birth-gender"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='source.BirthOrder &apos;= 0' >
<true>
<if condition='source.BirthOrder&apos;=""' >
<true>
<assign value='source.BirthOrder' property='target.multipleBirthInteger' action='set' >
<annotation> Whether patient is part of a multiple birth. </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='source.BirthOrder = 0' >
<true>
<if condition='source.BirthOrder&apos;=""' >
<true>
<assign value='source.BirthOrder' property='target.multipleBirthBoolean' action='set' >
<annotation> Whether patient is part of a multiple birth.
 --- SDA3 HS.SDA3.Patient:BirthOrder is restricted to integer values only; this is not a good match for FHIR STU3 Patient:multipleBirthBoolean.    </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "BirthPlace")' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-birth-place"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<assign value='##class(HS.FHIR.DTL.Util.Element.TypeCast).DateToFHIR(source.BirthTime, "date")' property='value' action='set' />
<if condition='value&apos;=""' >
<true>
<assign value='value' property='target.birthDate' action='set' >
<annotation> The date of birth for the individual </annotation>
</assign>
</true>
</if>
<if condition='source.BlankNameReason&apos;=""' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-blank-name-reason"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "Citizenship")' >
<true>
<assign value='##class(HS.FHIR.DTL.Util.SDA3.Handler.Patient).Citizenship(source.Citizenship)' property='value' action='set' />
<assign value='target.extension.Count()+1' property='index' action='set' />
<if condition='value&apos;=""' >
<true>
<assign value='"http://hl7.org/fhir/StructureDefinition/patient-citizenship"' property='value.url' action='set' />
<assign value='value' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='source.Comments&apos;=""' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-comments"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='source.CommunicationPreference&apos;=""' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-communication-preference"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "DeathDeclaredBy")' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-death-declared-by"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='source.DeathLocation&apos;=""' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension' targetObj='tmp' sourceObj='source.DeathLocation' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-death-location"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<assign value='##class(HS.FHIR.DTL.Util.Element.TypeCast).DateToFHIR(source.DeathTime, "dateTime")' property='value' action='set' />
<if condition='value&apos;=""' >
<true>
<assign value='value' property='target.deceasedDateTime' action='set' >
<annotation> Indicates if the individual is deceased or not. </annotation>
</assign>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "EnteredAt")' >
<true>
<assign value='target.newResource.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Resource.Organization).%New()' property='tmp' action='set' />
<code>
<![CDATA[  if $listvalid(target.newResourceReference) { set target.newResourceReference = $listupdate(target.newResourceReference, $listlength(target.newResourceReference) + 1, "managingOrganization") } 
 else { set target.newResourceReference = $listbuild("managingOrganization") } ]]></code>
<if condition='tmp&apos;=""' >
<true>
<assign value='tmp' property='target.newResource' action='set' key='index' >
<annotation> Organization that is the custodian of the patient record </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "EnteredBy")' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-entered-by"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='source.EnteredOn&apos;=""' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.TimeStamp.Extension' targetObj='tmp' sourceObj='source.EnteredOn' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-entered-on"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "EthnicGroup")' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='EPCIS.intersystems.FHIR.DTL.SDA3.vSTU3.CodeTableTranslated.Extension' targetObj='tmp' sourceObj='source.EthnicGroup' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-ethnic-group"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "FamilyDoctor")' >
<true>
<assign value='target.newResource.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Resource.Practitioner).%New()' property='tmp' action='set' />
<subtransform class='HS.FHIR.DTL.SDA3.vSTU3.CodeTableDetail.FamilyDoctor.Practitioner' targetObj='tmp' sourceObj='source.FamilyDoctor' aux='.aux' />
<code>
<![CDATA[  if $listvalid(target.newResourceReference) { set target.newResourceReference = $listupdate(target.newResourceReference, $listlength(target.newResourceReference) + 1, "generalPractitioner") } 
 else { set target.newResourceReference = $listbuild("generalPractitioner") } ]]></code>
<if condition='tmp&apos;=""' >
<true>
<assign value='tmp' property='target.newResource' action='set' key='index' >
<annotation> Patient&#39;s nominated primary care provider </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source,"Gender")' >
<true>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "Gender")' >
<true>
<assign value='##class(HS.FHIR.DTL.Util.Lookup).Code("SDA3","vSTU3","HS.SDA3.CodeTableDetail.Gender","administrative-gender",source.Gender)' property='value' action='set' />
<if condition='value&apos;=""' >
<true>
<assign value='value' property='target.gender' action='set' >
<annotation> male | female | other | unknown
 --- This mapping entry seeks a lookup table entry that can match a source value with a target value for this field. If the mapping cannot find the lookup table, or cannot find a matching entry in the lookup table, and it has a non-empty Default Value defined, it places its Default Value into the target field. Otherwise, the target receive no value from this mapping. 
 --- If the mapping is SDA to FHIR, and the source field contains a non-empty value, then by convention there are two mapping entries for this source field. Both entries execute under the same Condition to Set this Field. One entry does the lookup to retrieve the value to assign to the target field. The other stores the original source field value in a FHIR extension.    </annotation>
</assign>
</true>
</if>
</true>
</if>
</true>
</if>
<if condition='&apos;##class(HS.FHIR.DTL.Util.Element.Object).Defined(source,"Gender") || (##class(HS.FHIR.DTL.Util.Lookup).Code("SDA3","vSTU3","HS.SDA3.CodeTableDetail.Gender","administrative-gender",source.Gender) = "")' >
<true>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "Gender")' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='EPCIS.intersystems.DTL.SDA3.vSTU3.CodeTableTranslated.Extension' targetObj='tmp' sourceObj='source.Gender' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-gender"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations
 --- This mapping supports a related mapping that does a table lookup to match the incoming source value with a value to place in the target field. This mapping has the same Condition to Set this Field as the table lookup. If the lookup successfully finds a value for target field, this mapping stores the original source field value in a FHIR extension.    </annotation>
</assign>
</true>
</if>
</true>
</if>
</true>
</if>
<if condition='source.ImmunizationRegistryStatus&apos;=""' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension' targetObj='tmp' sourceObj='source.ImmunizationRegistryStatus' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-immunization-registry-status"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='source.DeathTime = ""' >
<true>
<assign value='$select(source.IsDead="true":1,source.IsDead="false":0, 1:source.IsDead)' property='target.deceasedBoolean' action='set' >
<annotation> Indicates if the individual is deceased or not. </annotation>
</assign>
</true>
</if>
<if condition='source.IsProtected&apos;=""' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.Boolean.Extension' targetObj='tmp' sourceObj='source.IsProtected' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-is-protected"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source,"MaritalStatus")' >
<true>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "MaritalStatus")' >
<true>
<assign value='##class(HS.FHIR.DTL.Util.Lookup).Code("SDA3","vSTU3","HS.SDA3.CodeTableDetail.MaritalStatus","marital-status",source.MaritalStatus)' property='value' action='set' />
<if condition='value&apos;=""' >
<true>
<assign value='value' property='target.maritalStatus.coding.(1).code' action='set' >
<annotation> Marital (civil) status of a patient
 --- This mapping entry seeks a lookup table entry that can match a source value with a target value for this field. If the mapping cannot find the lookup table, or cannot find a matching entry in the lookup table, and it has a non-empty Default Value defined, it places its Default Value into the target field. Otherwise, the target receive no value from this mapping. 
 --- If the mapping is SDA to FHIR, and the source field contains a non-empty value, then by convention there are two mapping entries for this source field. Both entries execute under the same Condition to Set this Field. One entry does the lookup to retrieve the value to assign to the target field. The other stores the original source field value in a FHIR extension.    </annotation>
</assign>
</true>
</if>
</true>
</if>
</true>
</if>
<if condition='&apos;##class(HS.FHIR.DTL.Util.Element.Object).Defined(source,"MaritalStatus") || (##class(HS.FHIR.DTL.Util.Lookup).Code("SDA3","vSTU3","HS.SDA3.CodeTableDetail.MaritalStatus","marital-status",source.MaritalStatus) = "")' >
<true>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "MaritalStatus")' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='EPCIS.intersystems.DTL.SDA3.vSTU3.CodeTableTranslated.Extension' targetObj='tmp' sourceObj='source.MaritalStatus' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-marital-status"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations
 --- This mapping supports a related mapping that does a table lookup to match the incoming source value with a value to place in the target field. This mapping has the same Condition to Set this Field as the table lookup. If the lookup successfully finds a value for target field, this mapping stores the original source field value in a FHIR extension.    </annotation>
</assign>
</true>
</if>
</true>
</if>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "MothersFullName")' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='HS.FHIR.DTL.SDA3.vSTU3.Name.Extension' targetObj='tmp' sourceObj='source.MothersFullName' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-mothers-full-name"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='source.MothersMaidenName&apos;=""' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension' targetObj='tmp' sourceObj='source.MothersMaidenName' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<assign value='##class(HS.FHIR.DTL.Util.Element.Object).StringToIdentifier(source.MPIID, "MPIID")' property='value' action='set' />
<assign value='target.identifier.Count()+1' property='index' action='set' />
<if condition='value&apos;=""' >
<true>
<assign value='value' property='target.identifier' action='set' key='index' >
<annotation> An identifier for this patient </annotation>
</assign>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "Name")' >
<true>
<assign value='##class(HS.FHIR.DTL.Util.SDA3.Handler.Patient).Name(source.Name)' property='value' action='set' />
<assign value='target.name.Count()+1' property='index' action='set' />
<if condition='value&apos;=""' >
<true>
<assign value='value' property='target.name' action='set' key='index' >
<annotation> A name associated with the patient
Note: Name is stored in the same place as Aliases, but with use &quot;official&quot; </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "Occupation")' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='HS.FHIR.DTL.SDA3.vSTU3.CodeTableDetail.Occupation.Extension' targetObj='tmp' sourceObj='source.Occupation' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-occupation"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<foreach property='source.Organizations()' key='st' >
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='HS.FHIR.DTL.SDA3.vSTU3.DocumentOrganization.Extension' targetObj='tmp' sourceObj='source.Organizations.(st)' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-organizations"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</foreach>
<foreach property='source.OtherLanguages()' key='st' >
<assign value='target.communication.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Patient.communication).%New()' property='tmp' action='set' />
<if condition='tmp&apos;=""' >
<true>
<assign value='tmp' property='target.communication' action='set' key='index' >
<annotation> A list of Languages which may be used to communicate with the patient about his or her health </annotation>
</assign>
</true>
</if>
</foreach>
<foreach property='source.PatientNumbers()' key='st' >
<assign value='target.identifier.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Datatype.Identifier).%New()' property='tmp' action='set' />
<subtransform class='HS.FHIR.DTL.SDA3.vSTU3.PatientNumber.Identifier' targetObj='tmp' sourceObj='source.PatientNumbers.(st)' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='tmp' property='target.identifier' action='set' key='index' >
<annotation> An identifier for this patient </annotation>
</assign>
</true>
</if>
</foreach>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "PrimaryLanguage")' >
<true>
<assign value='##class(HS.FHIR.DTL.Util.SDA3.Handler.Patient).PrimaryLanguage(source.PrimaryLanguage)' property='value' action='set' />
<assign value='target.communication.Count()+1' property='index' action='set' />
<if condition='value&apos;=""' >
<true>
<assign value='value' property='target.communication' action='set' key='index' >
<annotation> A list of Languages which may be used to communicate with the patient about his or her health </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='source.ProtectedEffectiveDate&apos;=""' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.TimeStamp.Extension' targetObj='tmp' sourceObj='source.ProtectedEffectiveDate' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-protected-effective-date"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<foreach property='source.Providers()' key='st' >
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='HS.FHIR.DTL.SDA3.vSTU3.DocumentProvider.Extension' targetObj='tmp' sourceObj='source.Providers.(st)' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-providers"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</foreach>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "PublicityCode")' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='EPCIS.intersystems.DTL.SDA3.vSTU3.CodeTableTranslated.Extension' targetObj='tmp' sourceObj='source.PublicityCode' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-publicity-code"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='source.PublicityEffectiveDate&apos;=""' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.TimeStamp.Extension' targetObj='tmp' sourceObj='source.PublicityEffectiveDate' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-publicity-effective-date"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "Race")' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='EPCIS.intersystems.DTL.SDA3.vSTU3.CodeTableTranslated.Extension' targetObj='tmp' sourceObj='source.Race' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-race"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<foreach property='source.Races()' key='st' >
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='EPCIS.intersystems.DTL.SDA3.vSTU3.CodeTableTranslated.Extension' targetObj='tmp' sourceObj='source.Races.(st)' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/patient-races"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</foreach>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "Religion")' >
<true>
<assign value='target.extension.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<subtransform class='EPCIS.intersystems.DTL.SDA3.vSTU3.CodeTableTranslated.Extension' targetObj='tmp' sourceObj='source.Religion' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='"http://hl7.org/fhir/StructureDefinition/patient-religion"' property='tmp.url' action='set' />
<assign value='tmp' property='target.extension' action='set' key='index' >
<annotation> Additional Content defined by implementations </annotation>
</assign>
</true>
</if>
</true>
</if>
<foreach property='source.SupportContacts()' key='st' >
<assign value='target.contact.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Patient.contact).%New()' property='tmp' action='set' />
<subtransform class='HS.FHIR.DTL.SDA3.vSTU3.SupportContact.Patient.contact' targetObj='tmp' sourceObj='source.SupportContacts.(st)' aux='.aux' />
<if condition='tmp&apos;=""' >
<true>
<assign value='tmp' property='target.contact' action='set' key='index' >
<annotation> A contact party (e.g. guardian, partner, friend) for the patient </annotation>
</assign>
</true>
</if>
</foreach>
</transform>
}

}
