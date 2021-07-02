/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.QuerySchedule Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "QuerySchedule";

Parameter XMLSEQUENCE = 1;

Property second As %String(MAXLEN = "", XMLNAME = "second") [ SqlFieldName = _second ];

Property minute As %String(MAXLEN = "", XMLNAME = "minute") [ SqlFieldName = _minute ];

Property hour As %String(MAXLEN = "", XMLNAME = "hour") [ SqlFieldName = _hour ];

Property dayOfMonth As %String(MAXLEN = "", XMLNAME = "dayOfMonth");

Property month As %String(MAXLEN = "", XMLNAME = "month");

Property dayOfWeek As %String(MAXLEN = "", XMLNAME = "dayOfWeek");

Property extension As EPCIS.epcisq.QueryScheduleExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="QueryScheduleState">
<Value name="1">
<Value>second</Value>
</Value>
<Value name="2">
<Value>minute</Value>
</Value>
<Value name="3">
<Value>hour</Value>
</Value>
<Value name="4">
<Value>dayOfMonth</Value>
</Value>
<Value name="5">
<Value>month</Value>
</Value>
<Value name="6">
<Value>dayOfWeek</Value>
</Value>
<Value name="7">
<Value>extension</Value>
</Value>
<Value name="8">
<Value>any</Value>
</Value>
</Data>
<State>QueryScheduleState</State>
<StreamLocation>^EPCIS.epcisq.QueryScheduleS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
