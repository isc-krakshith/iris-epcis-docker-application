/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.TransactionEventExtensionType Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "TransactionEventExtensionType";

Parameter XMLSEQUENCE = 1;

Property quantityList As list Of EPCIS.epcis.QuantityElementType(XMLITEMNAME = "quantityElement", XMLNAME = "quantityList", XMLPROJECTION = "COLLECTION");

Property sourceList As list Of EPCIS.epcis.SourceDestType(XMLITEMNAME = "source", XMLNAME = "sourceList", XMLPROJECTION = "COLLECTION");

Property destinationList As list Of EPCIS.epcis.SourceDestType(XMLITEMNAME = "destination", XMLNAME = "destinationList", XMLPROJECTION = "COLLECTION");

Property extension As EPCIS.epcis.TransactionEventExtension2Type(XMLNAME = "extension");

Storage Default
{
<Data name="TransactionEventExtensionTypeState">
<Value name="1">
<Value>quantityList</Value>
</Value>
<Value name="2">
<Value>sourceList</Value>
</Value>
<Value name="3">
<Value>destinationList</Value>
</Value>
<Value name="4">
<Value>extension</Value>
</Value>
</Data>
<State>TransactionEventExtensionTypeState</State>
<StreamLocation>^EPCIS.epcis.TransactionD3F4S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
