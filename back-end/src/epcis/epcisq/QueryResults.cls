/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.QueryResults Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "QueryResults";

Parameter XMLSEQUENCE = 1;

Property queryName As %String(MAXLEN = "", XMLNAME = "queryName") [ Required ];

Property subscriptionID As %String(MAXLEN = "", XMLNAME = "subscriptionID");

Property resultsBody As EPCIS.epcisq.QueryResultsBody(XMLNAME = "resultsBody") [ Required ];

Property extension As EPCIS.epcisq.QueryResultsExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="QueryResultsState">
<Value name="1">
<Value>queryName</Value>
</Value>
<Value name="2">
<Value>subscriptionID</Value>
</Value>
<Value name="3">
<Value>resultsBody</Value>
</Value>
<Value name="4">
<Value>extension</Value>
</Value>
<Value name="5">
<Value>any</Value>
</Value>
</Data>
<State>QueryResultsState</State>
<StreamLocation>^EPCIS.epcisq.QueryResultsS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
