/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.EPCISEventListExtensionType Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISEventListExtensionType";

Parameter XMLSEQUENCE = 0;

Property TransformationEvent As EPCIS.epcis.TransformationEventType(XMLNAME = "TransformationEvent");

Property extension As EPCIS.epcis.EPCISEventListExtension2Type(XMLNAME = "extension");

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
<StreamLocation>^EPCIS.epcis.EPCISEventLB4A8S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
