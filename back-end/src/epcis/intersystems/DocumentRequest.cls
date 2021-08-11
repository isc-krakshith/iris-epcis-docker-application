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

Property bizStepField As %String(MAXLEN = 32000) [ Calculated, SqlComputeCode = { set {*}=##class(EPCIS.intersystems.DocumentRequest).getField({%%ID},"bizStep")}, SqlComputed ];

Property epcFieldCount As %Integer [ Calculated, SqlComputeCode = { set {*}=##class(EPCIS.intersystems.DocumentRequest).getField({%%ID},"EPC")}, SqlComputed ];

Property eventTimeField As %TimeStamp [ Calculated, SqlComputeCode = { set {*}=##class(EPCIS.intersystems.DocumentRequest).getField({%%ID},"eventTime")}, SqlComputed ];

Method bizStepFieldGet() As %String [ ServerOnly = 1 ]
{
	if '$isobject(..EPCISDocument.EPCISBody.EventList.ObjectEvent.GetAt(1)) quit ""
	Quit ..EPCISDocument.EPCISBody.EventList.ObjectEvent.GetAt(1).bizStep
}

ClassMethod getField(id As %Integer, fieldname As %String)
{
	set obj=..%OpenId(id)
	set field=""
	if id {
		if fieldname="bizStep" set field = $piece(obj.bizStepField,":",5)
		if fieldname="EPC" set field=obj.epcFieldCount
		if fieldname="eventTime" set field=obj.eventTimeField
	}
	quit field
}

Method epcFieldCountGet() As %List [ ServerOnly = 1 ]
{
	if '$isobject(..EPCISDocument.EPCISBody.EventList.ObjectEvent.GetAt(1)) quit ""

	Quit ..EPCISDocument.EPCISBody.EventList.ObjectEvent.GetAt(1).epcList.Count()
}

Method eventTimeFieldGet() As %TimeStamp [ ServerOnly = 1 ]
{
	if '$isobject(..EPCISDocument.EPCISBody.EventList.ObjectEvent.GetAt(1)) quit ""

	Quit ..EPCISDocument.EPCISBody.EventList.ObjectEvent.GetAt(1).eventTime
}

}
