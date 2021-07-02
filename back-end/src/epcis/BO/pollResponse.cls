Class EPCIS.BO.pollResponse Extends Ens.Response [ ProcedureBlock ]
{

Property queryName As %String;

Property subscriptionID As %String;

Property resultsBody As EPCIS.epcisq.QueryResultsBody;

Property extension As EPCIS.epcisq.QueryResultsExtensionType;

Property any As list Of %XML.String;

Storage Default
{
<Data name="pollResponseDefaultData">
<Subscript>"pollResponse"</Subscript>
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
<DefaultData>pollResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
