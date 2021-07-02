/// base type for all EPCIS events.
/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.EPCISEventType Extends (%Persistent, %XML.Adaptor, %JSON.Adaptor) [ Abstract, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISEventType";

Parameter XMLSEQUENCE = 1;

Property eventTime As %TimeStamp(XMLNAME = "eventTime") [ Required ];

Property recordTime As %TimeStamp(XMLNAME = "recordTime");

Property eventTimeZoneOffset As %String(MAXLEN = "", XMLNAME = "eventTimeZoneOffset") [ Required ];

Property baseExtension As EPCIS.epcis.EPCISEventExtensionType(XMLNAME = "baseExtension");

Storage Default
{
<Data name="EPCISEventTypeDefaultData">
<Subscript>"1"</Subscript>
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
</Data>
<Data name="EPCISEventTypeState">
<Value name="1">
<Value>eventTime</Value>
</Value>
<Value name="2">
<Value>recordTime</Value>
</Value>
<Value name="3">
<Value>eventTimeZoneOffset</Value>
</Value>
<Value name="4">
<Value>baseExtension</Value>
</Value>
</Data>
<DataLocation>^EPCIS.epcis.EPCISEventTypeD</DataLocation>
<DefaultData>EPCISEventTypeDefaultData</DefaultData>
<IdLocation>^EPCIS.epcis.EPCISEventTypeD</IdLocation>
<IndexLocation>^EPCIS.epcis.EPCISEventTypeI</IndexLocation>
<State>EPCISEventTypeState</State>
<StreamLocation>^EPCIS.epcis.EPCISEventTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
