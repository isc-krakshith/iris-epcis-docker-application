/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns3.EPC Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:xsd:1";

Parameter XMLNAME = "EPC";

Parameter XMLSEQUENCE = 1;

Property content As %String(MAXLEN = "", XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property role As %String(XMLPROJECTION = "NONE");

Storage Default
{
<Data name="EPCState">
<Value name="1">
<Value>content</Value>
</Value>
<Value name="2">
<Value>role</Value>
</Value>
</Data>
<State>EPCState</State>
<StreamLocation>^EPCIS.intersystems.cliD7B8.EPCS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
