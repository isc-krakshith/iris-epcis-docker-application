/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.EPCISMasterDataType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISMasterDataType";

Parameter XMLSEQUENCE = 1;

Property VocabularyList As list Of EPCIS.intersystems.client.ns2.VocabularyType(XMLITEMNAME = "Vocabulary", XMLNAME = "VocabularyList", XMLPROJECTION = "COLLECTION");

Property extension As EPCIS.intersystems.client.ns2.EPCISMasterDataExtensionType(XMLNAME = "extension");

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
<StreamLocation>^EPCIS.inte1779.EPCISMaster3C50S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
