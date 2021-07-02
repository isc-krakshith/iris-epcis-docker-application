Class EPCIS.intersystems.EventQueryRequest Extends EPCIS.intersystems.Request [ ProcedureBlock ]
{

Parameter RESPONSECLASSNAME = "EPCIS.intersystems.EventQueryResponse";

// params As %ListOfObjects(ELEMENTTYPE="EPCIS.epcisq.QueryParam",XMLITEMNAME="param",XMLNAME="params",REQUIRED=1)

Property QueryParams As list Of EPCIS.epcisq.QueryParam;

Storage Default
{
<Data name="EventQueryRequestDefaultData">
<Subscript>"EventQueryRequest"</Subscript>
<Value name="1">
<Value>%request</Value>
</Value>
<Value name="2">
<Value>Params</Value>
</Value>
<Value name="3">
<Value>QueryParams</Value>
</Value>
</Data>
<DefaultData>EventQueryRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
