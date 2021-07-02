/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.EPCISEventExtensionType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ CompileAfter = EPCIS.intersystems.client.ns2.EventIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISEventExtensionType";

Parameter XMLSEQUENCE = 1;

Property eventID As EPCIS.intersystems.client.ns2.EventIDType(XMLNAME = "eventID");

Property errorDeclaration As EPCIS.intersystems.client.ns2.ErrorDeclarationType(XMLNAME = "errorDeclaration");

Property extension As EPCIS.intersystems.client.ns2.EPCISEventExtension2Type(XMLNAME = "extension");

Storage Default
{
<Data name="EPCISEventExtensionTypeState">
<Value name="1">
<Value>eventID</Value>
</Value>
<Value name="2">
<Value>errorDeclaration</Value>
</Value>
<Value name="3">
<Value>extension</Value>
</Value>
</Data>
<State>EPCISEventExtensionTypeState</State>
<StreamLocation>^EPCIS.inte1779.EPCISEventE3676S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
