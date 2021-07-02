/// specific body that contains EPCIS related Events.
/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.EPCISBodyType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISBodyType";

Parameter XMLSEQUENCE = 1;

Property EventList As EPCIS.epcis.EventListType(XMLNAME = "EventList");

Property extension As EPCIS.epcis.EPCISBodyExtensionType(XMLNAME = "extension");

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
<StreamLocation>^EPCIS.epcis.EPCISBodyTypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
