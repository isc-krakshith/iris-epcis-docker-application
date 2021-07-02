Class EPCIS.intersystems.SubscribeMap Extends (%Persistent, %XML.Adaptor)
{

/*
PokeDocType("EPCglobal-epcis-1_2:EPCISDocument")
type		GetValueAt("/EPCISDocumentType/EPCISBody/EventList/[1]/name()")
action		GetValueAt("/EPCISDocumentType/EPCISBody/EventList/[1]/action")
location	GetValueAt("/EPCISDocumentType/EPCISBody/EventList/[1]/bizLocation/id")
transactions()
	count	GetValueAt("/EPCISDocumentType/EPCISBody/EventList/[1]/bizTransactionList/*")
	content	GetValueAt("/EPCISDocumentType/EPCISBody/EventList/[1]/bizTransactionList/bizTransaction[i]
epcs()
	count	GetValueAt("/EPCISDocumentType/EPCISBody/EventList/[1]/epcList/*")
		 or GetValueAt("/EPCISDocumentType/EPCISBody/EventList/[1]/childEPCs/*")
	content GetValueAt("/EPCISDocumentType/EPCISBody/EventList/[1]/epcList/epc[i]")
	     or GetValueAt("/EPCISDocumentType/EPCISBody/EventList/[1]/childEPCs/epc[i]")
destinations()
	count	GetValueAt("/EPCISDocumentType/EPCISBody/EventList/[1]/extension/destinationList/*")
	content	GetValueAt("/EPCISDocumentType/EPCISBody/EventList/[1]/extension/destinationList/destination[i]")

*/
Property Name As array Of %String(MAXLEN = 32000);

Property Priority As list Of %String(MAXLEN = "");

Property Storage As %String [ Required ];

Property DocType As %String(MAXLEN = 250);

Property Domain As %String;

Index DomainIndex On Domain [ IdKey, PrimaryKey, Unique ];

Index StorageIndex On Storage [ Unique ];

Storage Default
{
<Data name="Name">
<Attribute>Name</Attribute>
<Structure>subnode</Structure>
<Subscript>"Name"</Subscript>
</Data>
<Data name="SubscribeMapDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>DocType</Value>
</Value>
<Value name="3">
<Value>Priority</Value>
</Value>
<Value name="4">
<Value>Storage</Value>
</Value>
</Data>
<DataLocation>^EPCIS.intersy99D5.SubscribeMapD</DataLocation>
<DefaultData>SubscribeMapDefaultData</DefaultData>
<IdLocation>^EPCIS.intersy99D5.SubscribeMapD</IdLocation>
<IndexLocation>^EPCIS.intersy99D5.SubscribeMapI</IndexLocation>
<StreamLocation>^EPCIS.intersy99D5.SubscribeMapS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
