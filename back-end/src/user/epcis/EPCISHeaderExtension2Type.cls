/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.EPCISHeaderExtension2Type Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISHeaderExtension2Type";

Parameter XMLSEQUENCE = 1;

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="EPCISHeaderExtension2TypeState">
<Value name="1">
<Value>any</Value>
</Value>
</Data>
<State>EPCISHeaderExtension2TypeState</State>
<StreamLocation>^EPCIS.epcis.EPCISHeader71DFS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
