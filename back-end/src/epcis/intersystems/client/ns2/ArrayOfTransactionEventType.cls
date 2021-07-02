/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.ArrayOfTransactionEventType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "ArrayOfTransactionEventType";

Parameter XMLSEQUENCE = 1;

Property TransactionEventType As list Of EPCIS.intersystems.client.ns2.TransactionEventType(XMLNAME = "TransactionEventType", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ArrayOfTransactionEventTypeState">
<Value name="1">
<Value>TransactionEventType</Value>
</Value>
</Data>
<State>ArrayOfTransactionEventTypeState</State>
<StreamLocation>^EPCIS.inte1779.ArrayOfTran65CBS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
