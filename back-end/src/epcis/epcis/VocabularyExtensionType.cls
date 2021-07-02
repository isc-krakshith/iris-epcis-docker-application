/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.VocabularyExtensionType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "VocabularyExtensionType";

Parameter XMLSEQUENCE = 1;

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="VocabularyExtensionTypeState">
<Value name="1">
<Value>any</Value>
</Value>
</Data>
<State>VocabularyExtensionTypeState</State>
<StreamLocation>^EPCIS.epcis.VocabularyE5366S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
