Class EPCIS.EventQueryResponse Extends (%Persistent, %XML.Adaptor)
{

Property Document As list Of EPCIS.epcis.EPCISDocumentType(XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="EventQueryResponseDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>EPCISDocuments</Value>
</Value>
<Value name="3">
<Value>EPCISDocument</Value>
</Value>
<Value name="4">
<Value>Document</Value>
</Value>
</Data>
<DataLocation>^EPCIS.EventQueryResponseD</DataLocation>
<DefaultData>EventQueryResponseDefaultData</DefaultData>
<IdLocation>^EPCIS.EventQueryResponseD</IdLocation>
<IndexLocation>^EPCIS.EventQueryResponseI</IndexLocation>
<StreamLocation>^EPCIS.EventQueryResponseS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
