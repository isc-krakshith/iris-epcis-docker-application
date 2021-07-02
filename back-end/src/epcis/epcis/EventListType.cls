/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.EventListType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EventListType";

Parameter XMLSEQUENCE = 0;

Property ObjectEvent As list Of EPCIS.epcis.ObjectEventType(XMLNAME = "ObjectEvent", XMLPROJECTION = "ELEMENT");

Property AggregationEvent As list Of EPCIS.epcis.AggregationEventType(XMLNAME = "AggregationEvent", XMLPROJECTION = "ELEMENT");

Property QuantityEvent As list Of EPCIS.epcis.QuantityEventType(XMLNAME = "QuantityEvent", XMLPROJECTION = "ELEMENT");

Property TransactionEvent As list Of EPCIS.epcis.TransactionEventType(XMLNAME = "TransactionEvent", XMLPROJECTION = "ELEMENT");

Property extension As list Of EPCIS.epcis.EPCISEventListExtensionType(XMLNAME = "extension", XMLPROJECTION = "ELEMENT");

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
<StreamLocation>^EPCIS.epcis.EventListTypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
