/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.ImplementationException Extends EPCIS.epcisq.EPCISException [ CompileAfter = EPCIS.epcisq.ImplementationExceptionSeverity, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "ImplementationException";

Property severity As EPCIS.epcisq.ImplementationExceptionSeverity(XMLNAME = "severity") [ Required ];

Property queryName As %String(MAXLEN = "", XMLNAME = "queryName");

Property subscriptionID As %String(MAXLEN = "", XMLNAME = "subscriptionID");

Storage Default
{
<Data name="EPCISExceptionState">
<Value name="1">
<Value>reason</Value>
</Value>
<Value name="2">
<Value>severity</Value>
</Value>
<Value name="3">
<Value>queryName</Value>
</Value>
<Value name="4">
<Value>subscriptionID</Value>
</Value>
</Data>
<Type>%Storage.Serial</Type>
}

}
