/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.EPCISHeaderExtensionType Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISHeaderExtensionType";

Parameter XMLSEQUENCE = 1;

Property EPCISMasterData As EPCIS.epcis.EPCISMasterDataType(XMLNAME = "EPCISMasterData");

Property extension As EPCIS.epcis.EPCISHeaderExtension2Type(XMLNAME = "extension");

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
<StreamLocation>^EPCIS.epcis.EPCISHeaderE191S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
