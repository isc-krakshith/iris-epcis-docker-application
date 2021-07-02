/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.EPCISMasterDataType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISMasterDataType";

Parameter XMLSEQUENCE = 1;

Property VocabularyList As list Of EPCIS.epcis.VocabularyType(XMLITEMNAME = "Vocabulary", XMLNAME = "VocabularyList", XMLPROJECTION = "COLLECTION");

Property extension As EPCIS.epcis.EPCISMasterDataExtensionType(XMLNAME = "extension");

Storage Default
{
<Data name="EPCISMasterDataTypeState">
<Value name="1">
<Value>VocabularyList</Value>
</Value>
<Value name="2">
<Value>extension</Value>
</Value>
</Data>
<State>EPCISMasterDataTypeState</State>
<StreamLocation>^EPCIS.epcis.EPCISMaster3C50S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
