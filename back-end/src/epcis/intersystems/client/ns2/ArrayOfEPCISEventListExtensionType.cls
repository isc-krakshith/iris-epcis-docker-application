/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.ArrayOfEPCISEventListExtensionType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "ArrayOfEPCISEventListExtensionType";

Parameter XMLSEQUENCE = 1;

Property EPCISEventListExtensionType As list Of EPCIS.intersystems.client.ns2.EPCISEventListExtensionType(XMLNAME = "EPCISEventListExtensionType", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ArrayOfEPCISEventListExtensionTypeState">
<Value name="1">
<Value>EPCISEventListExtensionType</Value>
</Value>
</Data>
<State>ArrayOfEPCISEventListExtensionTypeState</State>
<StreamLocation>^EPCIS.inte1779.ArrayOfEPCI8C70S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
