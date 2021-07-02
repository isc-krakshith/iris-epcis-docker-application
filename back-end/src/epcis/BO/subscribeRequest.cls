Class EPCIS.BO.subscribeRequest Extends EPCIS.intersystems.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "EPCIS.BO.subscribeResponse";

Property queryName As %String;

Property params As list Of EPCIS.epcisq.QueryParam;

Property dest As %xsd.anyURI;

Property controls As EPCIS.epcisq.SubscriptionControls;

Property subscriptionID As %String;

Storage Default
{
<Data name="subscribeRequestDefaultData">
<Subscript>"subscribeRequest"</Subscript>
<Value name="1">
<Value>queryName</Value>
</Value>
<Value name="2">
<Value>params</Value>
</Value>
<Value name="3">
<Value>dest</Value>
</Value>
<Value name="4">
<Value>controls</Value>
</Value>
<Value name="5">
<Value>subscriptionID</Value>
</Value>
</Data>
<DefaultData>subscribeRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
