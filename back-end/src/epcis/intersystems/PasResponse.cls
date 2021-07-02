Class EPCIS.intersystems.PasResponse Extends Ens.Response
{

Property Patient As %GlobalCharacterStream;

Storage Default
{
<Data name="PasResponseDefaultData">
<Subscript>"PasResponse"</Subscript>
<Value name="1">
<Value>Patient</Value>
</Value>
</Data>
<DefaultData>PasResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
