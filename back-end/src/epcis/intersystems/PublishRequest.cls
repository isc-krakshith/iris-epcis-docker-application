Class EPCIS.intersystems.PublishRequest Extends Ens.Request
{

Property CaptureRequest As EPCIS.intersystems.CaptureRequest;

Property CaptureResponse As EPCIS.intersystems.CaptureResponse;

Storage Default
{
<Data name="PublishRequestDefaultData">
<Subscript>"PublishRequest"</Subscript>
<Value name="1">
<Value>CaptureRequest</Value>
</Value>
<Value name="2">
<Value>CaptureResponse</Value>
</Value>
</Data>
<DefaultData>PublishRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
