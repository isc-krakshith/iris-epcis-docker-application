/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.BusinessTransactionType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ CompileAfter = (EPCIS.intersystems.client.ns2.BusinessTransactionIDType, EPCIS.intersystems.client.ns2.BusinessTransactionTypeIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "BusinessTransactionType";

Parameter XMLSEQUENCE = 1;

Property content As EPCIS.intersystems.client.ns2.BusinessTransactionIDType(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property type As EPCIS.intersystems.client.ns2.BusinessTransactionTypeIDType(XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="BusinessTransactionTypeState">
<Value name="1">
<Value>content</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
</Data>
<State>BusinessTransactionTypeState</State>
<StreamLocation>^EPCIS.inte1779.BusinessTra1CA4S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
