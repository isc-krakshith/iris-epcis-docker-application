Class EPCIS.intersystems.CaptureResponse Extends Ens.Response [ ProcedureBlock ]
{

Property CaptureResult As %xsd.base64Binary;

Storage Default
{
<Data name="CaptureResponseDefaultData">
<Subscript>"CaptureResponse"</Subscript>
<Value name="1">
<Value>CaptureResult</Value>
</Value>
</Data>
<DefaultData>CaptureResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
