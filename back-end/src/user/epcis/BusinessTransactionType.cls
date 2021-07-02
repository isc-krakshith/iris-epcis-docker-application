/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.BusinessTransactionType Extends (%Persistent, %XML.Adaptor) [ CompileAfter = (EPCIS.epcis.BusinessTransactionIDType, EPCIS.epcis.BusinessTransactionTypeIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "BusinessTransactionType";

Parameter XMLSEQUENCE = 1;

Property content As EPCIS.epcis.BusinessTransactionIDType(XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property type As EPCIS.epcis.BusinessTransactionTypeIDType(XMLNAME = "type", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="BusinessTransactionTypeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>content</Value>
</Value>
<Value name="3">
<Value>type</Value>
</Value>
</Data>
<DataLocation>^EPCIS.epcis.BusinessTra1CA4D</DataLocation>
<DefaultData>BusinessTransactionTypeDefaultData</DefaultData>
<IdLocation>^EPCIS.epcis.BusinessTra1CA4D</IdLocation>
<IndexLocation>^EPCIS.epcis.BusinessTra1CA4I</IndexLocation>
<StreamLocation>^EPCIS.epcis.BusinessTra1CA4S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
