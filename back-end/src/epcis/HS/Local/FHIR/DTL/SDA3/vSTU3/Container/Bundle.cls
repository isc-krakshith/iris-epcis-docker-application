/// Transforms SDA3 HS.SDA3.Container to vSTU3 Bundle
Class HS.Local.FHIR.DTL.SDA3.vSTU3.Container.Bundle Extends Ens.DataTransformDTL [ DependsOn = (HS.SDA3.Container, HS.FHIR.DTL.vSTU3.Model.Resource.Bundle), ProcedureBlock ]
{

/// This DTL XData block was generated. Do not modify it.
XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.SDA3.Container' targetClass='HS.FHIR.DTL.vSTU3.Model.Resource.Bundle' create='existing' language='objectscript' >
  <annotation>
    <![CDATA[ Transforms HS.SDA3.Container (SDA3) to Bundle (vSTU3) ]]>
  </annotation>
<foreach property='source.AdvanceDirectives()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.AdvanceDirective.Bundle.entry",source.AdvanceDirectives.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.Alerts()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Alert.Bundle.entry",source.Alerts.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.Allergies()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Allergy.Bundle.entry",source.Allergies.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.Appointments()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Appointment.Bundle.entry",source.Appointments.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.CarePlans()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CarePlan.Bundle.entry",source.CarePlans.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.Diagnoses()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Diagnosis.Bundle.entry",source.Diagnoses.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.Documents()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Document.Bundle.entry",source.Documents.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.Encounters()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Encounter.Bundle.entry",source.Encounters.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.FamilyHistories()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.FamilyHistory.Bundle.entry",source.FamilyHistories.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.Goals()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Goal.Bundle.entry",source.Goals.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.Guarantors()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Guarantor.Bundle.entry",source.Guarantors.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.HealthConcerns()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.HealthConcern.Bundle.entry",source.HealthConcerns.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.IllnessHistories()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.IllnessHistory.Bundle.entry",source.IllnessHistories.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.LabOrders()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.LabOrder.Bundle.entry",source.LabOrders.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.MedicalClaims()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.MedicalClaim.Bundle.entry",source.MedicalClaims.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.Medications()' key='st' >
<assign value='##class(HS.FHIR.DTL.Util.SDA3.Handler.Container).Medication(source.Medications.GetAt(st), .aux, .target)' property='value' action='set' />
<assign value='target.entry.Count()+1' property='index' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if> </foreach>
<foreach property='source.MemberEnrollments()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.MemberEnrollment.Bundle.entry",source.MemberEnrollments.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.ObservationGroups()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.ObservationGroup.Bundle.entry",source.ObservationGroups.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.Observations()' key='st' >
<if condition='source.Observations.(st).ObservationGroup = ""'> 
<true>
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Observation.Bundle.entry",source.Observations.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
</foreach>
<foreach property='source.OtherOrders()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.OtherOrder.Bundle.entry",source.OtherOrders.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "Patient")'> 
<true>
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Patient.Bundle.entry",source.Patient,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<foreach property='source.PhysicalExams()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.PhysicalExam.Bundle.entry",source.PhysicalExams.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.Problems()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Problem.Bundle.entry",source.Problems.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.Procedures()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Procedure.Bundle.entry",source.Procedures.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.RadOrders()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.RadOrder.Bundle.entry",source.RadOrders.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.Referrals()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Referral.Bundle.entry",source.Referrals.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.SocialDeterminants()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.SocialDeterminant.Bundle.entry",source.SocialDeterminants.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.SocialHistories()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.SocialHistory.Bundle.entry",source.SocialHistories.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<foreach property='source.Vaccinations()' key='st' >
<assign value='target.entry.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Vaccination.Bundle.entry",source.Vaccinations.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.entry' action='set' key='index'  >
<annotation>
<![CDATA[ Entry in the bundle - will have a resource, or information ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<if condition='##class(%Dictionary.ClassDefinition).%ExistsId("HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.Container.Bundle")'> 
<true>
<code><![CDATA[  lock +^HS.FHIR.DTL("lock", "HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.Container.Bundle") ]]></code>
<assign value='##class(HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.Container.Bundle).Transform(source.Extension, .target, .aux)' property='target' action='set' />
<code><![CDATA[  lock -^HS.FHIR.DTL("lock", "HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.Container.Bundle") ]]></code>
</true>
</if>
</transform>
}

}
