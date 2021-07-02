/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.Unsubscribe Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "Unsubscribe";

Parameter XMLSEQUENCE = 1;

Property subscriptionID As %String(MAXLEN = "", XMLNAME = "subscriptionID") [ Required ];

Storage Default
{
<Data name="UnsubscribeState">
<Value name="1">
<Value>subscriptionID</Value>
</Value>
</Data>
<State>UnsubscribeState</State>
<StreamLocation>^EPCIS.epcisq.UnsubscribeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
