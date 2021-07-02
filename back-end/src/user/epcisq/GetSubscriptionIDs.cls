/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.GetSubscriptionIDs Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "GetSubscriptionIDs";

Parameter XMLSEQUENCE = 1;

Property queryName As %String(MAXLEN = "", XMLNAME = "queryName") [ Required ];

Storage Default
{
<Data name="GetSubscriptionIDsState">
<Value name="1">
<Value>queryName</Value>
</Value>
</Data>
<State>GetSubscriptionIDsState</State>
<StreamLocation>^EPCIS.epcisq.GetSubscripE6DDS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
