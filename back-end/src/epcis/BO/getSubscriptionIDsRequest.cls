Class EPCIS.BO.getSubscriptionIDsRequest Extends EPCIS.intersystems.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "EPCIS.BO.getSubscriptionIDsResponse";

Property queryName As %String;

Storage Default
{
<Data name="getSubscriptionIDsRequestDefaultData">
<Subscript>"getSubscriptionIDsRequest"</Subscript>
<Value name="1">
<Value>queryName</Value>
</Value>
</Data>
<DefaultData>getSubscriptionIDsRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
