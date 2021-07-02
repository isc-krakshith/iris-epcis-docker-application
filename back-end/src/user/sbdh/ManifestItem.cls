/// Created from: c:/temp/epcis/manifest.xsd
Class EPCIS.sbdh.ManifestItem Extends (%SerialObject, %XML.Adaptor) [ CompileAfter = (EPCIS.sbdh.Language, EPCIS.sbdh.MimeTypeQualifier), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "ManifestItem";

Parameter XMLSEQUENCE = 1;

Property MimeTypeQualifierCode As EPCIS.sbdh.MimeTypeQualifier(XMLNAME = "MimeTypeQualifierCode");

Property UniformResourceIdentifier As %xsd.anyURI(XMLNAME = "UniformResourceIdentifier");

Property Description As %String(MAXLEN = "", XMLNAME = "Description");

Property LanguageCode As EPCIS.sbdh.Language(XMLNAME = "LanguageCode");

Storage Default
{
<Data name="ManifestItemState">
<Value name="1">
<Value>MimeTypeQualifierCode</Value>
</Value>
<Value name="2">
<Value>UniformResourceIdentifier</Value>
</Value>
<Value name="3">
<Value>Description</Value>
</Value>
<Value name="4">
<Value>LanguageCode</Value>
</Value>
</Data>
<State>ManifestItemState</State>
<StreamLocation>^EPCIS.sbdh.ManifestItemS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
