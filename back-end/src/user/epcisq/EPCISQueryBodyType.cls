/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.EPCISQueryBodyType Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "EPCISQueryBodyType";

Parameter XMLSEQUENCE = 0;

Property GetQueryNames As EPCIS.epcisq.EmptyParms(CLASSNAME = 1, REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "GetQueryNames", XMLREF = 1);

Property GetQueryNamesResult As list Of %String(MAXLEN = "", REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLITEMNAME = "string", XMLNAME = "GetQueryNamesResult", XMLPROJECTION = "COLLECTION", XMLREF = 1);

Property Subscribe As EPCIS.epcisq.Subscribe(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "Subscribe", XMLREF = 1);

Property SubscribeResult As EPCIS.epcisq.VoidHolder(CLASSNAME = 1, REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "SubscribeResult", XMLREF = 1);

Property Unsubscribe As EPCIS.epcisq.Unsubscribe(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "Unsubscribe", XMLREF = 1);

Property UnsubscribeResult As EPCIS.epcisq.VoidHolder(CLASSNAME = 1, REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "UnsubscribeResult", XMLREF = 1);

Property GetSubscriptionIDs As EPCIS.epcisq.GetSubscriptionIDs(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "GetSubscriptionIDs", XMLREF = 1);

Property GetSubscriptionIDsResult As list Of %String(MAXLEN = "", REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLITEMNAME = "string", XMLNAME = "GetSubscriptionIDsResult", XMLPROJECTION = "COLLECTION", XMLREF = 1);

Property Poll As EPCIS.epcisq.Poll(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "Poll", XMLREF = 1);

Property GetStandardVersion As EPCIS.epcisq.EmptyParms(CLASSNAME = 1, REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "GetStandardVersion", XMLREF = 1);

Property GetStandardVersionResult As %String(MAXLEN = "", REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "GetStandardVersionResult", XMLREF = 1);

Property GetVendorVersion As EPCIS.epcisq.EmptyParms(CLASSNAME = 1, REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "GetVendorVersion", XMLREF = 1);

Property GetVendorVersionResult As %String(MAXLEN = "", REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "GetVendorVersionResult", XMLREF = 1);

Property DuplicateNameException As EPCIS.epcisq.DuplicateNameException(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "DuplicateNameException", XMLREF = 1);

Property InvalidURIException As EPCIS.epcisq.InvalidURIException(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "InvalidURIException", XMLREF = 1);

Property NoSuchNameException As EPCIS.epcisq.NoSuchNameException(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "NoSuchNameException", XMLREF = 1);

Property NoSuchSubscriptionException As EPCIS.epcisq.NoSuchSubscriptionException(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "NoSuchSubscriptionException", XMLREF = 1);

Property DuplicateSubscriptionException As EPCIS.epcisq.DuplicateSubscriptionException(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "DuplicateSubscriptionException", XMLREF = 1);

Property QueryParameterException As EPCIS.epcisq.QueryParameterException(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "QueryParameterException", XMLREF = 1);

Property QueryTooLargeException As EPCIS.epcisq.QueryTooLargeException(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "QueryTooLargeException", XMLREF = 1);

Property QueryTooComplexException As EPCIS.epcisq.QueryTooComplexException(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "QueryTooComplexException", XMLREF = 1);

Property SubscriptionControlsException As EPCIS.epcisq.SubscriptionControlsException(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "SubscriptionControlsException", XMLREF = 1);

Property SubscribeNotPermittedException As EPCIS.epcisq.SubscribeNotPermittedException(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "SubscribeNotPermittedException", XMLREF = 1);

Property SecurityException As EPCIS.epcisq.SecurityException(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "SecurityException", XMLREF = 1);

Property ValidationException As EPCIS.epcisq.ValidationException(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "ValidationException", XMLREF = 1);

Property ImplementationException As EPCIS.epcisq.ImplementationException(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "ImplementationException", XMLREF = 1);

Property QueryResults As EPCIS.epcisq.QueryResults(REFELEMENTQUALIFIED = 0, REFNAMESPACE = "urn:epcglobal:epcis-query:xsd:1", XMLNAME = "QueryResults", XMLREF = 1);

Storage Default
{
<Data name="EPCISQueryBodyTypeState">
<Value name="1">
<Value>GetQueryNames</Value>
</Value>
<Value name="2">
<Value>GetQueryNamesResult</Value>
</Value>
<Value name="3">
<Value>Subscribe</Value>
</Value>
<Value name="4">
<Value>SubscribeResult</Value>
</Value>
<Value name="5">
<Value>Unsubscribe</Value>
</Value>
<Value name="6">
<Value>UnsubscribeResult</Value>
</Value>
<Value name="7">
<Value>GetSubscriptionIDs</Value>
</Value>
<Value name="8">
<Value>GetSubscriptionIDsResult</Value>
</Value>
<Value name="9">
<Value>Poll</Value>
</Value>
<Value name="10">
<Value>GetStandardVersion</Value>
</Value>
<Value name="11">
<Value>GetStandardVersionResult</Value>
</Value>
<Value name="12">
<Value>GetVendorVersion</Value>
</Value>
<Value name="13">
<Value>GetVendorVersionResult</Value>
</Value>
<Value name="14">
<Value>DuplicateNameException</Value>
</Value>
<Value name="15">
<Value>InvalidURIException</Value>
</Value>
<Value name="16">
<Value>NoSuchNameException</Value>
</Value>
<Value name="17">
<Value>NoSuchSubscriptionException</Value>
</Value>
<Value name="18">
<Value>DuplicateSubscriptionException</Value>
</Value>
<Value name="19">
<Value>QueryParameterException</Value>
</Value>
<Value name="20">
<Value>QueryTooLargeException</Value>
</Value>
<Value name="21">
<Value>QueryTooComplexException</Value>
</Value>
<Value name="22">
<Value>SubscriptionControlsException</Value>
</Value>
<Value name="23">
<Value>SubscribeNotPermittedException</Value>
</Value>
<Value name="24">
<Value>SecurityException</Value>
</Value>
<Value name="25">
<Value>ValidationException</Value>
</Value>
<Value name="26">
<Value>ImplementationException</Value>
</Value>
<Value name="27">
<Value>QueryResults</Value>
</Value>
</Data>
<State>EPCISQueryBodyTypeState</State>
<StreamLocation>^EPCIS.epcisq.EPCISQueryB73F5S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
