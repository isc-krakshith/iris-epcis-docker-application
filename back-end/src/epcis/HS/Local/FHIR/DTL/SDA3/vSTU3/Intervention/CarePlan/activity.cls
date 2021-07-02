/// Transforms SDA3 HS.SDA3.Intervention to vSTU3 CarePlan:activity
Class HS.Local.FHIR.DTL.SDA3.vSTU3.Intervention.CarePlan.activity Extends Ens.DataTransformDTL [ DependsOn = (HS.SDA3.Intervention, HS.FHIR.DTL.vSTU3.Model.Element.CarePlan.activity), ProcedureBlock ]
{

/// This DTL XData block was generated. Do not modify it.
XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.SDA3.Intervention' targetClass='HS.FHIR.DTL.vSTU3.Model.Element.CarePlan.activity' create='existing' language='objectscript' >
  <annotation>
    <![CDATA[ Transforms HS.SDA3.Intervention (SDA3) to CarePlan:activity (vSTU3) ]]>
  </annotation>
<assign value='##class(HS.FHIR.DTL.Util.SDA3.Handler.CustomPairs).Extension(source.CustomPairs, .target)' property='value' action='set' />
<if condition='target.detail&apos;=""'> 
<true> 
<assign value='target.detail.extension.Count()+1' property='index' action='set' />
</true> 
<false> 
<assign value='1' property='index' action='set' />
</false> 
</if> 
<if condition='value&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/intervention-custom-pairs"' property='value.url' action='set' />
<assign value='value' property='target.detail.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations
 --- When the SDA3 source data contains a CustomPairs collection, and the target is FHIR, the collection is mapped to a FHIR extension that contains a Parameters resource. This Parameters resource is a collection of paired fields: name and valueString.   ]]>
</annotation>
</assign></true> 
</if> 
<if condition='source.Description&apos;=""'> 
<true>
<if condition='source.Description&apos;=""'> 
<true> 
<assign value='source.Description' property='target.detail.description' action='set' >
<annotation>
<![CDATA[ Extra info describing activity to perform ]]>
</annotation>
</assign></true> 
</if> 

</true>
</if>
<if condition='source.EncounterNumber&apos;=""'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='target.detail&apos;=""'> 
<true> 
<assign value='target.detail.extension.Count()+1' property='index' action='set' />
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.EncounterNumber,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/intervention-encounter-number"' property='tmp.url' action='set' />
<assign value='tmp' property='target.detail.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "EnteredAt")'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='target.detail&apos;=""'> 
<true> 
<assign value='target.detail.extension.Count()+1' property='index' action='set' />
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableDetail.Organization.Extension",source.EnteredAt,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/intervention-entered-at"' property='tmp.url' action='set' />
<assign value='tmp' property='target.detail.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "EnteredBy")'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='target.detail&apos;=""'> 
<true> 
<assign value='target.detail.extension.Count()+1' property='index' action='set' />
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableDetail.Extension",source.EnteredBy,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/intervention-entered-by"' property='tmp.url' action='set' />
<assign value='tmp' property='target.detail.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<if condition='source.EnteredOn&apos;=""'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='target.detail&apos;=""'> 
<true> 
<assign value='target.detail.extension.Count()+1' property='index' action='set' />
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.TimeStamp.Extension",source.EnteredOn,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/intervention-entered-on"' property='tmp.url' action='set' />
<assign value='tmp' property='target.detail.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='source.ExternalId&apos;=""'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='target.detail&apos;=""'> 
<true> 
<assign value='target.detail.extension.Count()+1' property='index' action='set' />
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.ExternalId,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/intervention-external-id"' property='tmp.url' action='set' />
<assign value='tmp' property='target.detail.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='source.FromTime&apos;=""'> 
<true>
<assign value='##class(HS.FHIR.DTL.Util.Element.TypeCast).DateToFHIR(source.FromTime, "dateTime")' property='value' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.detail.scheduledPeriod.start' action='set' >
<annotation>
<![CDATA[ Starting time with inclusive boundary ]]>
</annotation>
</assign></true> 
</if> 
</true>
</if>
<if condition='source.GoalIds&apos;=""'> 
<true>
<foreach property='source.GoalIds()' key='st' >
<assign value='1' property='index' action='set' />
<if condition='target.detail&apos;=""'> 
<true> 
<assign value='target.detail.extension.Count()+1' property='index' action='set' />
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.GoalIds.(st),.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/intervention-goal-ids"' property='tmp.url' action='set' />
<assign value='tmp' property='target.detail.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>
</foreach>
</true>
</if>
<foreach property='source.Performers()' key='st' >
<assign value='target.newResource.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Resource.Practitioner).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.DocumentProvider.Practitioner",source.Performers.(st),.tmp,.aux)' property='status' action='set' />
<code>
<![CDATA[  if $listvalid(target.newResourceReference) { set target.newResourceReference = $listupdate(target.newResourceReference, $listlength(target.newResourceReference) + 1, "detail.performer") } 
 else { set target.newResourceReference = $listbuild("detail.performer") } ]]></code>
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.newResource' action='set' key='index'  >
<annotation>
<![CDATA[ Who will be responsible? ]]>
</annotation>
</assign></true> 
</if>
</foreach>
<assign value='##class(HS.FHIR.DTL.Util.Lookup).Code("SDA3","vSTU3","HS.SDA3.Intervention:Status","care-plan-activity-status",source.Status)' property='value' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.detail.status' action='set' >
<annotation>
<![CDATA[ not-started | scheduled | in-progress | on-hold | completed | cancelled | unknown
 --- This mapping entry seeks a lookup table entry that can match a source value with a target value for this field. If the mapping cannot find the lookup table, or cannot find a matching entry in the lookup table, and it has a non-empty Default Value defined, it places its Default Value into the target field. Otherwise, the target receive no value from this mapping. 
 --- If the mapping is SDA to FHIR, and the source field contains a non-empty value, then by convention there are two mapping entries for this source field. Both entries execute under the same Condition to Set this Field. One entry does the lookup to retrieve the value to assign to the target field. The other stores the original source field value in a FHIR extension.    ]]>
</annotation>
</assign></true> 
<false> 
<assign value='"unknown"' property='target.detail.status' action='set' />
</false> 
</if> 
<if condition='source.Status&apos;=""'> 
<true>
<if condition='(##class(HS.FHIR.DTL.Util.Lookup).Code("SDA3","vSTU3","HS.SDA3.Intervention:Status","care-plan-activity-status",source.Status) = "")'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='target.detail&apos;=""'> 
<true> 
<assign value='target.detail.extension.Count()+1' property='index' action='set' />
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.String.Extension",source.Status,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/intervention-status"' property='tmp.url' action='set' />
<assign value='tmp' property='target.detail.extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
</true>
</if>
<if condition='source.ToTime&apos;=""'> 
<true>
<assign value='##class(HS.FHIR.DTL.Util.Element.TypeCast).DateToFHIR(source.ToTime, "dateTime")' property='value' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.detail.scheduledPeriod.end' action='set' >
<annotation>
<![CDATA[ End time with inclusive boundary, if not ongoing ]]>
</annotation>
</assign></true> 
</if> 
</true>
</if>
<if condition='##class(%Dictionary.ClassDefinition).%ExistsId("HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.Intervention.CarePlan.activity")'> 
<true>
<code><![CDATA[  lock +^HS.FHIR.DTL("lock", "HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.Intervention.CarePlan.activity") ]]></code>
<assign value='##class(HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.Intervention.CarePlan.activity).Transform(source.Extension, .target, .aux)' property='target' action='set' />
<code><![CDATA[  lock -^HS.FHIR.DTL("lock", "HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.Intervention.CarePlan.activity") ]]></code>
</true>
</if>
</transform>
}

}
