/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.EPCISEventListExtensionType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISEventListExtensionType";

Parameter XMLSEQUENCE = 1;

Property TransformationEvent As EPCIS.intersystems.client.ns2.TransformationEventType(XMLNAME = "TransformationEvent");

Property extension As EPCIS.intersystems.client.ns2.EPCISEventListExtension2Type(XMLNAME = "extension");

Storage Default
{
<Data name="EPCISEventListExtensionTypeState">
<Value name="1">
<Value>TransformationEvent</Value>
</Value>
<Value name="2">
<Value>extension</Value>
</Value>
</Data>
<State>EPCISEventListExtensionTypeState</State>
<StreamLocation>^EPCIS.inte1779.EPCISEventLB4A8S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
