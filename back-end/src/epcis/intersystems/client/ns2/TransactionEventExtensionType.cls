/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.TransactionEventExtensionType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "TransactionEventExtensionType";

Parameter XMLSEQUENCE = 1;

Property quantityList As list Of EPCIS.intersystems.client.ns2.QuantityElementType(XMLITEMNAME = "quantityElement", XMLNAME = "quantityList", XMLPROJECTION = "COLLECTION");

Property sourceList As list Of EPCIS.intersystems.client.ns2.SourceDestType(XMLITEMNAME = "source", XMLNAME = "sourceList", XMLPROJECTION = "COLLECTION");

Property destinationList As list Of EPCIS.intersystems.client.ns2.SourceDestType(XMLITEMNAME = "destination", XMLNAME = "destinationList", XMLPROJECTION = "COLLECTION");

Property extension As EPCIS.intersystems.client.ns2.TransactionEventExtension2Type(XMLNAME = "extension");

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
<StreamLocation>^EPCIS.inte1779.TransactionD3F4S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
