/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.VocabularyType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "VocabularyType";

Parameter XMLSEQUENCE = 1;

Property VocabularyElementList As list Of EPCIS.intersystems.client.ns2.VocabularyElementType(XMLITEMNAME = "VocabularyElement", XMLNAME = "VocabularyElementList", XMLPROJECTION = "COLLECTION");

Property extension As EPCIS.intersystems.client.ns2.VocabularyExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Property type As %xsd.anyURI(XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="VocabularyTypeState">
<Value name="1">
<Value>VocabularyElementList</Value>
</Value>
<Value name="2">
<Value>extension</Value>
</Value>
<Value name="3">
<Value>any</Value>
</Value>
<Value name="4">
<Value>type</Value>
</Value>
</Data>
<State>VocabularyTypeState</State>
<StreamLocation>^EPCIS.inter1779.VocabularyTypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
