/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.QueryTooLargeException Extends EPCIS.epcisq.EPCISException [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "QueryTooLargeException";

Property queryName As %String(MAXLEN = "", XMLNAME = "queryName");

Property subscriptionID As %String(MAXLEN = "", XMLNAME = "subscriptionID");

Storage Default
{
<Data name="EPCISExceptionState">
<Value name="1">
<Value>reason</Value>
</Value>
<Value name="2">
<Value>queryName</Value>
</Value>
<Value name="3">
<Value>subscriptionID</Value>
</Value>
</Data>
<Type>%Storage.Serial</Type>
}

}
