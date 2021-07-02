/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.Poll Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "Poll";

Parameter XMLSEQUENCE = 1;

Property queryName As %String(MAXLEN = "", XMLNAME = "queryName") [ Required ];

Property params As list Of EPCIS.epcisq.QueryParam(XMLITEMNAME = "param", XMLNAME = "params", XMLPROJECTION = "COLLECTION") [ Required ];

Storage Default
{
<Data name="PollState">
<Value name="1">
<Value>queryName</Value>
</Value>
<Value name="2">
<Value>params</Value>
</Value>
</Data>
<State>PollState</State>
<StreamLocation>^EPCIS.epcisq.PollS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
