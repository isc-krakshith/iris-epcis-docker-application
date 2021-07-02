/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.BusinessTransactionType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ CompileAfter = (EPCIS.epcis.BusinessTransactionIDType, EPCIS.epcis.BusinessTransactionTypeIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "BusinessTransactionType";

Parameter XMLSEQUENCE = 1;

Property content As EPCIS.epcis.BusinessTransactionIDType(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property type As EPCIS.epcis.BusinessTransactionTypeIDType(XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");

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
<StreamLocation>^EPCIS.epcis.BusinessTra1CA4S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
