/// Transforms SDA3 HS.SDA3.CodeTableDetail.HealthCareFacility to vSTU3 Organization
Class HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableDetail.HealthCareFacility.Organization Extends Ens.DataTransformDTL [ DependsOn = (HS.SDA3.CodeTableDetail.HealthCareFacility, HS.FHIR.DTL.vSTU3.Model.Resource.Organization), ProcedureBlock ]
{

/// This DTL XData block was generated. Do not modify it.
XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.SDA3.CodeTableDetail.HealthCareFacility' targetClass='HS.FHIR.DTL.vSTU3.Model.Resource.Organization' create='existing' language='objectscript' >
  <annotation>
    <![CDATA[ Transforms HS.SDA3.CodeTableDetail.HealthCareFacility (SDA3) to Organization (vSTU3) ]]>
  </annotation>
<assign value='"1"' property='target.active' action='set' >
<annotation>
<![CDATA[ Whether the organization's record is still in active use ]]>
</annotation>
</assign>
<if condition='source.Description = ""'> 
<true>
<if condition='source.Code&apos;=""'> 
<true> 
<assign value='source.Code' property='target.name' action='set' >
<annotation>
<![CDATA[ Name used for the organization ]]>
</annotation>
</assign></true> 
</if> 

</true>
</if>
<if condition='source.Code&apos;=""'> 
<true>
<if condition='source.Code&apos;=""'> 
<true> 
<assign value='source.Code' property='target.identifier.(1).value' action='set' >
<annotation>
<![CDATA[ The value that is unique ]]>
</annotation>
</assign></true> 
</if> 

</true>
</if>
<if condition='source.Description&apos;=""'> 
<true> 
<assign value='source.Description' property='target.name' action='set' >
<annotation>
<![CDATA[ Name used for the organization ]]>
</annotation>
</assign></true> 
</if> 

<if condition='source.LocationType&apos;=""'> 
<true>
<if condition='source.LocationType&apos;=""'> 
<true> 
<assign value='source.LocationType' property='target.type.(1).text' action='set' >
<annotation>
<![CDATA[ Plain text representation of the concept ]]>
</annotation>
</assign></true> 
</if> 

</true>
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source, "Organization")'> 
<true>
<assign value='target.newResource.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Resource.Organization).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableDetail.Organization.Organization",source.Organization,.tmp,.aux)' property='status' action='set' />
<code>
<![CDATA[  if $listvalid(target.newResourceReference) { set target.newResourceReference = $listupdate(target.newResourceReference, $listlength(target.newResourceReference) + 1, "partOf") } 
 else { set target.newResourceReference = $listbuild("partOf") } ]]></code>
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.newResource' action='set' key='index'  >
<annotation>
<![CDATA[ The organization of which this organization forms a part ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source.Organization, "Address")'> 
<true>
<assign value='target.address.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Datatype.Address).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.Address.Address",source.Organization.Address,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.address' action='set' key='index'  >
<annotation>
<![CDATA[ An address for the organization ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<if condition='##class(HS.FHIR.DTL.Util.Element.Object).Defined(source.Organization, "ContactInfo")'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='(target.contact&apos;="") &amp;&amp; (target.contact.Count() &gt; 0)'> 
<true> 
<if condition='target.contact.(1)&apos;=""'> 
<true> 
<assign value='target.contact.(1).telecom.Count()+1' property='index' action='set' />
</true> 
</if> 
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Datatype.ContactPoint).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.ContactInfo.ContactPoint",source.Organization.ContactInfo,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.contact.(1).telecom' action='set'  >
<annotation>
<![CDATA[ Contact details (telephone, email, etc.) for a contact ]]>
</annotation>
</assign></true> 
</if>
</true> 
</if>
<if condition='source.SDACodingStandard&apos;=""'> 
<true>
<assign value='##class(HS.FHIR.DTL.Util.Lookup).GetURIForCode(source.SDACodingStandard)' property='value' action='set' />
<if condition='value&apos;=""'> 
<true>
<assign value='value' property='target.identifier.(1).system' action='set' >
<annotation>
<![CDATA[ The namespace for the identifier value ]]>
</annotation>
</assign></true> 
</if> 
</true>
</if>
<if condition='source.SDACodingStandard&apos;=""'> 
<true>
<if condition='##class(HS.FHIR.DTL.Util.Lookup).GetURIForCode(source.SDACodingStandard) = ""'> 
<true>
<assign value='1' property='index' action='set' />
<if condition='(target.identifier&apos;="") &amp;&amp; (target.identifier.Count() &gt; 0)'> 
<true> 
<if condition='target.identifier.(1)&apos;=""'> 
<true> 
<assign value='target.identifier.(1).extension.Count()+1' property='index' action='set' />
</true> 
</if> 
</true> 
</if> 
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Base.Extension).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.FHIR.DTL.SubXFrm.SDA3.vSTU3.StrippedString.Extension",source.SDACodingStandard,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='"http://intersystems.com/fhir/extn/sda3/lib/code-table-detail-health-care-facility-s-d-a-coding-standard"' property='tmp.url' action='set' />
<assign value='tmp' property='target.identifier.(1).extension' action='set' key='index'  >
<annotation>
<![CDATA[ Additional Content defined by implementations ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
</true>
</if>
<if condition='##class(%Dictionary.ClassDefinition).%ExistsId("HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.CodeTableDetail.HealthCareFacility.Organization")'> 
<true>
<code><![CDATA[  lock +^HS.FHIR.DTL("lock", "HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.CodeTableDetail.HealthCareFacility.Organization") ]]></code>
<assign value='##class(HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.CodeTableDetail.HealthCareFacility.Organization).Transform(source.Extension, .target, .aux)' property='target' action='set' />
<code><![CDATA[  lock -^HS.FHIR.DTL("lock", "HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.CodeTableDetail.HealthCareFacility.Organization") ]]></code>
</true>
</if>
</transform>
}

}
