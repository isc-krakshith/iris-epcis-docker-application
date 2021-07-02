/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.TransactionEventExtension2Type Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "TransactionEventExtension2Type";

Parameter XMLSEQUENCE = 1;

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="TransactionEventExtension2TypeState">
<Value name="1">
<Value>any</Value>
</Value>
</Data>
<State>TransactionEventExtension2TypeState</State>
<StreamLocation>^EPCIS.epcis.Transaction5ACDS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
