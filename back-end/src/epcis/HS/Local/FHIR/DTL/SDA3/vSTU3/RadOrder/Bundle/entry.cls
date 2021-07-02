/// Transforms SDA3 HS.SDA3.RadOrder to vSTU3 Bundle:entry
Class HS.Local.FHIR.DTL.SDA3.vSTU3.RadOrder.Bundle.entry Extends Ens.DataTransformDTL [ DependsOn = (HS.SDA3.RadOrder, HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry), ProcedureBlock ]
{

/// This DTL XData block was generated. Do not modify it.
XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='HS.SDA3.RadOrder' targetClass='HS.FHIR.DTL.vSTU3.Model.Element.Bundle.entry' create='existing' language='objectscript' >
  <annotation>
    <![CDATA[ Transforms HS.SDA3.RadOrder (SDA3) to Bundle:entry (vSTU3) ]]>
  </annotation>
<if condition='(source.Result.ResultItems.Count() > 0) || (source.Result.ResultText &apos;= "") || (source.Result.Stream.Size > 0)'> 
<true>
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Resource.DiagnosticReport).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.RadOrder.DiagnosticReport",source,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.resource' action='set'  >
<annotation>
<![CDATA[ A resource in the bundle
Note: A DiagnosticReport is only created if there exists a result within the RadOrder. A ProcedureRequest is always created, however. ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='(source.Result.ResultItems.Count()=0) &amp;&amp; (source.Result.ResultText="") &amp;&amp; (source.Result.Stream.Size=0)'> 
<true>
<assign value='##class(HS.FHIR.DTL.vSTU3.Model.Resource.ProcedureRequest).%New()' property='tmp' action='set' />
<assign value='##class(HS.FHIR.DTL.Util.Execute).ExecuteDTL("HS.Local.FHIR.DTL.SDA3.vSTU3.RadOrder.ProcedureRequest",source,.tmp,.aux)' property='status' action='set' />
<if condition='tmp&apos;=""'> 
<true>
<assign value='tmp' property='target.resource' action='set'  >
<annotation>
<![CDATA[ A resource in the bundle
Note: If no results exist, the ProcedureRequest is created immediately. If results exist, the ProcedureRequest is created in the mapping to DiagnosticReport:basedOn ]]>
</annotation>
</assign></true> 
</if>

</true>
</if>
<if condition='##class(%Dictionary.ClassDefinition).%ExistsId("HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.RadOrder.Bundle.entry")'> 
<true>
<code><![CDATA[  lock +^HS.FHIR.DTL("lock", "HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.RadOrder.Bundle.entry") ]]></code>
<assign value='##class(HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.RadOrder.Bundle.entry).Transform(source.Extension, .target, .aux)' property='target' action='set' />
<code><![CDATA[  lock -^HS.FHIR.DTL("lock", "HS.FHIR.DTL.Mapping.Extension.SDA3.vSTU3.RadOrder.Bundle.entry") ]]></code>
</true>
</if>
</transform>
}

}
