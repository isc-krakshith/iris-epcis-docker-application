/// Transforms SDA3 HS.SDA3.CodeTableDetail.DrugProduct to vSTU3 Extension
Class HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableDetail.DrugProduct.Extension Extends Ens.DataTransformDTL [ DependsOn = (HS.SDA3.CodeTableDetail.DrugProduct, HS.FHIR.DTL.vSTU3.Model.Base.Extension), ProcedureBlock ]
{

/// This DTL XData block was generated. Do not modify it.
XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.SDA3.CodeTableDetail.DrugProduct' targetClass='HS.FHIR.DTL.vSTU3.Model.Base.Extension' create='existing' language='objectscript' >
  <annotation>
    <![CDATA[ Transforms HS.SDA3.CodeTableDetail.DrugProduct (SDA3) to Extension (vSTU3) ]]>
  </annotation>
<assign value='target.newResource.Count()+1' property='index' action='set' />
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Resource.Medication).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.CodeTableDetail.DrugProduct.Medication",source,.tmp,.aux)' property='status' action='set' />
<code>
<![CDATA[  if $listvalid(target.newResourceReference) { set target.newResourceReference = $listupdate(target.newResourceReference, $listlength(target.newResourceReference) + 1, "valueReference") } 
 else { set target.newResourceReference = $listbuild("valueReference") } ]]></code>
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.newResource' action='set' key='index'  >
<annotation>
<![CDATA[ Value of extension ]]>
</annotation>
</assign></true> 
</if>

<if condition='##class(%Dictionary.ClassDefinition).%ExistsId("HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.CodeTableDetail.DrugProduct.Extension")'> 
<true>
<code><![CDATA[  lock +^HS.FHIR.DTL("lock", "HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.CodeTableDetail.DrugProduct.Extension") ]]></code>
<assign value='##class(HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.CodeTableDetail.DrugProduct.Extension).Transform(source.Extension, .target, .aux)' property='target' action='set' />
<code><![CDATA[  lock -^HS.FHIR.DTL("lock", "HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.CodeTableDetail.DrugProduct.Extension") ]]></code>
</true>
</if>
</transform>
}

}
