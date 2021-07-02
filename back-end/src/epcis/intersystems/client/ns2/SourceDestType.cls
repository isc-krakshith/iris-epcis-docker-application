/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.SourceDestType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ CompileAfter = (EPCIS.intersystems.client.ns2.SourceDestIDType, EPCIS.intersystems.client.ns2.SourceDestTypeIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "SourceDestType";

Parameter XMLSEQUENCE = 1;

Property content As EPCIS.intersystems.client.ns2.SourceDestIDType(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property type As EPCIS.intersystems.client.ns2.SourceDestTypeIDType(XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE") [ Required ];

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
<StreamLocation>^EPCIS.inter1779.SourceDestTypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
