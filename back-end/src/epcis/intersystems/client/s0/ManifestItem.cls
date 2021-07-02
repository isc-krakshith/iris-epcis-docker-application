/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.s0.ManifestItem Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ CompileAfter = (EPCIS.intersystems.client.s0.Language, EPCIS.intersystems.client.s0.MimeTypeQualifier), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "ManifestItem";

Parameter XMLSEQUENCE = 1;

Property MimeTypeQualifierCode As EPCIS.intersystems.client.s0.MimeTypeQualifier(XMLNAME = "MimeTypeQualifierCode");

Property UniformResourceIdentifier As %xsd.anyURI(XMLNAME = "UniformResourceIdentifier");

Property Description As %String(MAXLEN = "", XMLNAME = "Description");

Property LanguageCode As EPCIS.intersystems.client.s0.Language(XMLNAME = "LanguageCode");

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
<StreamLocation>^EPCIS.intersy184F.ManifestItemS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
