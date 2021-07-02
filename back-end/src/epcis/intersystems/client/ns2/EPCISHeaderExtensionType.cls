/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.EPCISHeaderExtensionType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISHeaderExtensionType";

Parameter XMLSEQUENCE = 1;

Property EPCISMasterData As EPCIS.intersystems.client.ns2.EPCISMasterDataType(XMLNAME = "EPCISMasterData");

Property extension As EPCIS.intersystems.client.ns2.EPCISHeaderExtension2Type(XMLNAME = "extension");

Storage Default
{
<Data name="EPCISHeaderExtensionTypeState">
<Value name="1">
<Value>EPCISMasterData</Value>
</Value>
<Value name="2">
<Value>extension</Value>
</Value>
</Data>
<State>EPCISHeaderExtensionTypeState</State>
<StreamLocation>^EPCIS.inte1779.EPCISHeaderE191S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
