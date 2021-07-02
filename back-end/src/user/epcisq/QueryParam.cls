/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.QueryParam Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "QueryParam";

Parameter XMLSEQUENCE = 1;

Property name As %String(MAXLEN = "", XMLNAME = "name") [ Required ];

Property value As %String(MAXLEN = "", XMLNAME = "value") [ Required ];

Storage Default
{
<Data name="QueryParamState">
<Value name="1">
<Value>name</Value>
</Value>
<Value name="2">
<Value>value</Value>
</Value>
</Data>
<State>QueryParamState</State>
<StreamLocation>^EPCIS.epcisq.QueryParamS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
