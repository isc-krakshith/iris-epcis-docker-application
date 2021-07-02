/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.EventListType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EventListType";

Parameter XMLSEQUENCE = 1;

Property ObjectEvent As list Of EPCIS.intersystems.client.ns2.ObjectEventType(REFNAMESPACE = "http://epcis.gs1uk.org/nhs/", XMLNAME = "ObjectEvent", XMLPROJECTION = "ELEMENT", XMLREFERENCE = "");

Property AggregationEvent As list Of EPCIS.intersystems.client.ns2.AggregationEventType(XMLNAME = "AggregationEvent", XMLPROJECTION = "ELEMENT");

Property QuantityEvent As list Of EPCIS.intersystems.client.ns2.QuantityEventType(XMLNAME = "QuantityEvent", XMLPROJECTION = "ELEMENT");

Property TransactionEvent As list Of EPCIS.intersystems.client.ns2.TransactionEventType(REFNAMESPACE = "http://epcis.gs1uk.org/nhs/", XMLNAME = "TransactionEvent", XMLPROJECTION = "ELEMENT");

Property extension As list Of EPCIS.intersystems.client.ns2.EPCISEventListExtensionType(XMLNAME = "extension", XMLPROJECTION = "ELEMENT");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="EventListTypeState">
<Value name="1">
<Value>ObjectEvent</Value>
</Value>
<Value name="2">
<Value>AggregationEvent</Value>
</Value>
<Value name="3">
<Value>QuantityEvent</Value>
</Value>
<Value name="4">
<Value>TransactionEvent</Value>
</Value>
<Value name="5">
<Value>extension</Value>
</Value>
<Value name="6">
<Value>any</Value>
</Value>
</Data>
<State>EventListTypeState</State>
<StreamLocation>^EPCIS.inters1779.EventListTypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
