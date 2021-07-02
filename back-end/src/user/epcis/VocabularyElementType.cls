/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.VocabularyElementType Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "VocabularyElementType";

Parameter XMLSEQUENCE = 1;

Property attribute As list Of EPCIS.epcis.AttributeType(XMLNAME = "attribute", XMLPROJECTION = "ELEMENT");

Property children As list Of %xsd.anyURI(XMLITEMNAME = "id", XMLNAME = "children", XMLPROJECTION = "COLLECTION");

Property extension As EPCIS.epcis.VocabularyElementExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Property id As %xsd.anyURI(XMLNAME = "id", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="VocabularyElementTypeState">
<Value name="1">
<Value>attribute</Value>
</Value>
<Value name="2">
<Value>children</Value>
</Value>
<Value name="3">
<Value>extension</Value>
</Value>
<Value name="4">
<Value>any</Value>
</Value>
<Value name="5">
<Value>id</Value>
</Value>
</Data>
<State>VocabularyElementTypeState</State>
<StreamLocation>^EPCIS.epcis.VocabularyE718AS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
