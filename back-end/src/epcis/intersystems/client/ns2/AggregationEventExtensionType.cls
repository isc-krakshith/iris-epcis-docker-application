/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.AggregationEventExtensionType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "AggregationEventExtensionType";

Parameter XMLSEQUENCE = 1;

Property childQuantityList As list Of EPCIS.intersystems.client.ns2.QuantityElementType(XMLITEMNAME = "quantityElement", XMLNAME = "childQuantityList", XMLPROJECTION = "COLLECTION");

Property sourceList As list Of EPCIS.intersystems.client.ns2.SourceDestType(XMLITEMNAME = "source", XMLNAME = "sourceList", XMLPROJECTION = "COLLECTION");

Property destinationList As list Of EPCIS.intersystems.client.ns2.SourceDestType(XMLITEMNAME = "destination", XMLNAME = "destinationList", XMLPROJECTION = "COLLECTION");

Property extension As EPCIS.intersystems.client.ns2.AggregationEventExtension2Type(XMLNAME = "extension");

Storage Default
{
<Data name="AggregationEventExtensionTypeState">
<Value name="1">
<Value>childQuantityList</Value>
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
<State>AggregationEventExtensionTypeState</State>
<StreamLocation>^EPCIS.inte1779.AggregationFC51S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
