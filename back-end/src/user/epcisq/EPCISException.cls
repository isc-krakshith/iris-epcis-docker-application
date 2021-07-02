/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.EPCISException Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "EPCISException";

Parameter XMLSEQUENCE = 1;

Property reason As %String(MAXLEN = "", XMLNAME = "reason") [ Required ];

Storage Default
{
<Data name="EPCISExceptionState">
<Value name="1">
<Value>reason</Value>
</Value>
</Data>
<State>EPCISExceptionState</State>
<StreamLocation>^EPCIS.epcisq.EPCISExceptionS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
