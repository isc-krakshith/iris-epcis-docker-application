Class EPCIS.intersystems.CaptureRequest Extends EPCIS.intersystems.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "EPCIS.intersystems.CaptureResponse";

Property pDocument As EPCIS.intersystems.client.ns2.EPCISDocumentType;

Storage Default
{
<Data name="CaptureRequestDefaultData">
<Subscript>"CaptureRequest"</Subscript>
<Value name="1">
<Value>pDocument</Value>
</Value>
</Data>
<DefaultData>CaptureRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
