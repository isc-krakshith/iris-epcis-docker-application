/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.ArrayOfObjectEventType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "ArrayOfObjectEventType";

Parameter XMLSEQUENCE = 1;

Property ObjectEventType As list Of EPCIS.intersystems.client.ns2.ObjectEventType(XMLNAME = "ObjectEventType", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ArrayOfObjectEventTypeState">
<Value name="1">
<Value>ObjectEventType</Value>
</Value>
</Data>
<State>ArrayOfObjectEventTypeState</State>
<StreamLocation>^EPCIS.inte1779.ArrayOfObjeFFD0S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
