/// Object Event captures information about an event pertaining to one or more
/// objects identified by EPCs.
/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.ObjectEventType Extends EPCIS.epcis.EPCISEventType [ CompileAfter = (EPCIS.epcis.ActionType, EPCIS.epcis.BusinessStepIDType, EPCIS.epcis.DispositionIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "ObjectEventType";

Property epcList As list Of %XML.String(XMLITEMNAME = "epc", XMLNAME = "epcList", XMLPROJECTION = "COLLECTION");

Property action As EPCIS.epcis.ActionType(XMLNAME = "action");

Property bizStep As EPCIS.epcis.BusinessStepIDType(XMLNAME = "bizStep");

Property disposition As EPCIS.epcis.DispositionIDType(XMLNAME = "disposition");

Property readPoint As EPCIS.epcis.ReadPointType(XMLNAME = "readPoint");

Property bizLocation As EPCIS.epcis.BusinessLocationType(XMLNAME = "bizLocation");

Property bizTransactionList As list Of EPCIS.epcis.BusinessTransactionType(XMLITEMNAME = "bizTransaction", XMLNAME = "bizTransactionList", XMLPROJECTION = "COLLECTION");

Property extension As EPCIS.epcis.ObjectEventExtensionType(XMLNAME = "extension");

// Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Property any As list Of %XML.String(REFNAMESPACE = "http://epcis.gs1uk.org/nhs/", XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="EPCISEventTypeState">
<Value name="1">
<Value>eventTime</Value>
</Value>
<Value name="2">
<Value>recordTime</Value>
</Value>
<Value name="3">
<Value>eventTimeZoneOffset</Value>
</Value>
<Value name="4">
<Value>baseExtension</Value>
</Value>
<Value name="5">
<Value>epcList</Value>
</Value>
<Value name="6">
<Value>action</Value>
</Value>
<Value name="7">
<Value>bizStep</Value>
</Value>
<Value name="8">
<Value>disposition</Value>
</Value>
<Value name="9">
<Value>readPoint</Value>
</Value>
<Value name="10">
<Value>bizLocation</Value>
</Value>
<Value name="11">
<Value>bizTransactionList</Value>
</Value>
<Value name="12">
<Value>extension</Value>
</Value>
<Value name="13">
<Value>any</Value>
</Value>
</Data>
<Type>%Storage.Serial</Type>
}

}
