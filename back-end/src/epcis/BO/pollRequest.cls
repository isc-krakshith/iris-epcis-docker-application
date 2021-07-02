Class EPCIS.BO.pollRequest Extends EPCIS.intersystems.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "EPCIS.BO.pollResponse";

Property queryName As %String;

Property params As list Of EPCIS.epcisq.QueryParam;

Property subscriptionID As %String;

Property resultsBody As EPCIS.epcisq.QueryResultsBody;

Property extension As EPCIS.epcisq.QueryResultsExtensionType;

Property any As list Of %XML.String;

Storage Default
{
<Data name="pollRequestDefaultData">
<Subscript>"pollRequest"</Subscript>
<Value name="1">
<Value>queryName</Value>
</Value>
<Value name="2">
<Value>params</Value>
</Value>
<Value name="3">
<Value>subscriptionID</Value>
</Value>
<Value name="4">
<Value>resultsBody</Value>
</Value>
<Value name="5">
<Value>extension</Value>
</Value>
<Value name="6">
<Value>any</Value>
</Value>
</Data>
<DefaultData>pollRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
