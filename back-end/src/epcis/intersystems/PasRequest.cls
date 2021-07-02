Class EPCIS.intersystems.PasRequest Extends Ens.Request
{

Property PasNumber As %String;

Property EpisodeNumber As %String;

Storage Default
{
<Data name="PasRequestDefaultData">
<Subscript>"PasRequest"</Subscript>
<Value name="1">
<Value>PasNumber</Value>
</Value>
<Value name="2">
<Value>EpisodeNumber</Value>
</Value>
</Data>
<DefaultData>PasRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
