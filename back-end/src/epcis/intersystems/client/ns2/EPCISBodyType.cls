/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.EPCISBodyType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISBodyType";

Parameter XMLSEQUENCE = 1;

Property EventList As EPCIS.intersystems.client.ns2.EventListType(XMLNAME = "EventList");

Property extension As EPCIS.intersystems.client.ns2.EPCISBodyExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="EPCISBodyTypeState">
<Value name="1">
<Value>EventList</Value>
</Value>
<Value name="2">
<Value>extension</Value>
</Value>
<Value name="3">
<Value>any</Value>
</Value>
</Data>
<State>EPCISBodyTypeState</State>
<StreamLocation>^EPCIS.inters1779.EPCISBodyTypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
