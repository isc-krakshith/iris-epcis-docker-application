/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.ArrayOfAggregationEventType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "ArrayOfAggregationEventType";

Parameter XMLSEQUENCE = 1;

Property AggregationEventType As list Of EPCIS.intersystems.client.ns2.AggregationEventType(XMLNAME = "AggregationEventType", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ArrayOfAggregationEventTypeState">
<Value name="1">
<Value>AggregationEventType</Value>
</Value>
</Data>
<State>ArrayOfAggregationEventTypeState</State>
<StreamLocation>^EPCIS.inte1779.ArrayOfAggr4DEES</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
