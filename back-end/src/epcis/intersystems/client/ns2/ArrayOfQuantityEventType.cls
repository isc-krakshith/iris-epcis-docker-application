/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.ArrayOfQuantityEventType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "ArrayOfQuantityEventType";

Parameter XMLSEQUENCE = 1;

Property QuantityEventType As list Of EPCIS.intersystems.client.ns2.QuantityEventType(XMLNAME = "QuantityEventType", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ArrayOfQuantityEventTypeState">
<Value name="1">
<Value>QuantityEventType</Value>
</Value>
</Data>
<State>ArrayOfQuantityEventTypeState</State>
<StreamLocation>^EPCIS.inte1779.ArrayOfQuantF36S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
