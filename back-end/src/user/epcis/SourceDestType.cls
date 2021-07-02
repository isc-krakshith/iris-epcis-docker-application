/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.SourceDestType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ CompileAfter = (EPCIS.epcis.SourceDestIDType, EPCIS.epcis.SourceDestTypeIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "SourceDestType";

Parameter XMLSEQUENCE = 1;

Property content As EPCIS.epcis.SourceDestIDType(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property type As EPCIS.epcis.SourceDestTypeIDType(XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="SourceDestTypeState">
<Value name="1">
<Value>content</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
</Data>
<State>SourceDestTypeState</State>
<StreamLocation>^EPCIS.epcis.SourceDestTypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
