/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.Subscribe Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "Subscribe";

Parameter XMLSEQUENCE = 1;

Property queryName As %String(MAXLEN = "", XMLNAME = "queryName") [ Required ];

Property params As list Of EPCIS.epcisq.QueryParam(XMLITEMNAME = "param", XMLNAME = "params", XMLPROJECTION = "COLLECTION") [ Required ];

Property dest As %xsd.anyURI(XMLNAME = "dest") [ Required ];

Property controls As EPCIS.epcisq.SubscriptionControls(XMLNAME = "controls") [ Required ];

Property subscriptionID As %String(MAXLEN = "", XMLNAME = "subscriptionID") [ Required ];

Storage Default
{
<Data name="SubscribeState">
<Value name="1">
<Value>queryName</Value>
</Value>
<Value name="2">
<Value>params</Value>
</Value>
<Value name="3">
<Value>dest</Value>
</Value>
<Value name="4">
<Value>controls</Value>
</Value>
<Value name="5">
<Value>subscriptionID</Value>
</Value>
</Data>
<State>SubscribeState</State>
<StreamLocation>^EPCIS.epcisq.SubscribeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
