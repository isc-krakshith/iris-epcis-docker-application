Class EPCIS.intersystems.NotifyRequest Extends Ens.Request
{

Property NotifyList As %String(MAXLEN = "");

Property Event As %String(MAXLEN = "");

Storage Default
{
<Data name="NotifyRequestDefaultData">
<Subscript>"NotifyRequest"</Subscript>
<Value name="1">
<Value>NotifyList</Value>
</Value>
<Value name="2">
<Value>Event</Value>
</Value>
</Data>
<DefaultData>NotifyRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
