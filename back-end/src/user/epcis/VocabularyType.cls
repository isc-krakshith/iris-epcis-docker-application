/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.VocabularyType Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "VocabularyType";

Parameter XMLSEQUENCE = 1;

Property VocabularyElementList As list Of EPCIS.epcis.VocabularyElementType(XMLITEMNAME = "VocabularyElement", XMLNAME = "VocabularyElementList", XMLPROJECTION = "COLLECTION");

Property extension As EPCIS.epcis.VocabularyExtensionType(XMLNAME = "extension");

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
<StreamLocation>^EPCIS.epcis.VocabularyTypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
