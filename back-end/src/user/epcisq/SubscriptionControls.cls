/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.SubscriptionControls Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "SubscriptionControls";

Parameter XMLSEQUENCE = 1;

Property schedule As EPCIS.epcisq.QuerySchedule(XMLNAME = "schedule");

Property trigger As %xsd.anyURI(XMLNAME = "trigger");

Property initialRecordTime As %TimeStamp(XMLNAME = "initialRecordTime");

Property reportIfEmpty As %Boolean(XMLNAME = "reportIfEmpty") [ Required ];

Property extension As EPCIS.epcisq.SubscriptionControlsExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="SubscriptionControlsState">
<Value name="1">
<Value>schedule</Value>
</Value>
<Value name="2">
<Value>trigger</Value>
</Value>
<Value name="3">
<Value>initialRecordTime</Value>
</Value>
<Value name="4">
<Value>reportIfEmpty</Value>
</Value>
<Value name="5">
<Value>extension</Value>
</Value>
<Value name="6">
<Value>any</Value>
</Value>
</Data>
<State>SubscriptionControlsState</State>
<StreamLocation>^EPCIS.epcisq.SubscriptioA7ABS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
