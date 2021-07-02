Class EPCIS.intersystems.DocumentRequest Extends EPCIS.intersystems.Request
{

Property EPCISDocument As EPCIS.epcis.EPCISDocumentType;

Storage Default
{
<Data name="DocumentRequestDefaultData">
<Subscript>"DocumentRequest"</Subscript>
<Value name="1">
<Value>Document</Value>
</Value>
<Value name="2">
<Value>EPCISDocument</Value>
</Value>
</Data>
<DefaultData>DocumentRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
