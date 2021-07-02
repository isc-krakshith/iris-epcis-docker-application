Class EPCIS.BO.unsubscribeRequest Extends EPCIS.intersystems.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "EPCIS.BO.unsubscribeResponse";

Property subscriptionID As %String;

Storage Default
{
<Data name="unsubscribeRequestDefaultData">
<Subscript>"unsubscribeRequest"</Subscript>
<Value name="1">
<Value>subscriptionID</Value>
</Value>
</Data>
<DefaultData>unsubscribeRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
