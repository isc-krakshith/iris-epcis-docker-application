Class EPCIS.intersystems.Subscriber Extends (%Persistent, %XML.Adaptor)
{

Property User As %String;

Property Role As %String;

Property Email As %String(MAXLEN = 32000);

Storage Default
{
<Data name="SubscriberDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>User</Value>
</Value>
<Value name="3">
<Value>Role</Value>
</Value>
<Value name="4">
<Value>Email</Value>
</Value>
</Data>
<DataLocation>^EPCIS.intersystems.SubscriberD</DataLocation>
<DefaultData>SubscriberDefaultData</DefaultData>
<IdLocation>^EPCIS.intersystems.SubscriberD</IdLocation>
<IndexLocation>^EPCIS.intersystems.SubscriberI</IndexLocation>
<StreamLocation>^EPCIS.intersystems.SubscriberS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
