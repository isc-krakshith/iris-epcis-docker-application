Class EPCIS.intersystems.SubscriberStreamRequest Extends Ens.Request
{

Property Subscriber As %Integer;

Property Offset As %Integer;

Property RequestDate As %Date [ InitialExpression = {+$H} ];

Property DocumentList As %String;

Storage Default
{
<Data name="SubscriberStreamRequestDefaultData">
<Subscript>"SubscriberStreamRequest"</Subscript>
<Value name="1">
<Value>Subscriber</Value>
</Value>
<Value name="2">
<Value>Offset</Value>
</Value>
<Value name="3">
<Value>RequestDate</Value>
</Value>
<Value name="4">
<Value>DocumentList</Value>
</Value>
</Data>
<DefaultData>SubscriberStreamRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
