/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.EPCISEventType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ Abstract, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISEventType";

Parameter XMLSEQUENCE = 1;

Property eventTime As %TimeStamp(XMLNAME = "eventTime") [ Required ];

Property recordTime As %TimeStamp(XMLNAME = "recordTime");

Property eventTimeZoneOffset As %String(MAXLEN = "", XMLNAME = "eventTimeZoneOffset") [ InitialExpression = "+00:00" ];

Property baseExtension As EPCIS.intersystems.client.ns2.EPCISEventExtensionType(XMLNAME = "baseExtension");

Storage Default
{
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
<State>EPCISEventTypeState</State>
<StreamLocation>^EPCIS.inter1779.EPCISEventTypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
