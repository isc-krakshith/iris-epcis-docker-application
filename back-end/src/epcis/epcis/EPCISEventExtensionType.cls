/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.EPCISEventExtensionType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ CompileAfter = EPCIS.epcis.EventIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISEventExtensionType";

Parameter XMLSEQUENCE = 1;

Property eventID As EPCIS.epcis.EventIDType(XMLNAME = "eventID");

Property errorDeclaration As EPCIS.epcis.ErrorDeclarationType(XMLNAME = "errorDeclaration");

Property extension As EPCIS.epcis.EPCISEventExtension2Type(XMLNAME = "extension");

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
<StreamLocation>^EPCIS.epcis.EPCISEventE3676S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
