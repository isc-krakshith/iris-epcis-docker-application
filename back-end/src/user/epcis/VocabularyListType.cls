/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.VocabularyListType Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "VocabularyListType";

Parameter XMLSEQUENCE = 1;

Property Vocabulary As list Of EPCIS.epcis.VocabularyType(XMLNAME = "Vocabulary", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="VocabularyListTypeState">
<Value name="1">
<Value>Vocabulary</Value>
</Value>
</Data>
<State>VocabularyListTypeState</State>
<StreamLocation>^EPCIS.epcis.VocabularyL6451S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
