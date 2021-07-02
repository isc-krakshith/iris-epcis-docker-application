/// Transaction Event describes the association or disassociation of physical objects to one or more business
/// transactions.
/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.TransactionEventType Extends EPCIS.epcis.EPCISEventType [ CompileAfter = (EPCIS.epcis.ActionType, EPCIS.epcis.BusinessStepIDType, EPCIS.epcis.DispositionIDType, EPCIS.epcis.ParentIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "TransactionEventType";

Property bizTransactionList As list Of EPCIS.epcis.BusinessTransactionType(XMLITEMNAME = "bizTransaction", XMLNAME = "bizTransactionList", XMLPROJECTION = "COLLECTION");

Property parentID As EPCIS.epcis.ParentIDType(XMLNAME = "parentID");

Property epcList As list Of %XML.String(XMLITEMNAME = "epc", XMLNAME = "epcList", XMLPROJECTION = "COLLECTION");

// From ObjectEventType

// Property epcList As list Of %XML.String(XMLITEMNAME = "epc", XMLNAME = "epcList", XMLPROJECTION = "COLLECTION");

Property action As EPCIS.epcis.ActionType(XMLNAME = "action");

Property bizStep As EPCIS.epcis.BusinessStepIDType(XMLNAME = "bizStep");

Property disposition As EPCIS.epcis.DispositionIDType(XMLNAME = "disposition");

Property readPoint As EPCIS.epcis.ReadPointType(XMLNAME = "readPoint");

Property bizLocation As EPCIS.epcis.BusinessLocationType(XMLNAME = "bizLocation");

Property extension As EPCIS.epcis.TransactionEventExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

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
<Value>bizTransactionList</Value>
</Value>
<Value name="6">
<Value>parentID</Value>
</Value>
<Value name="7">
<Value>epcList</Value>
</Value>
<Value name="8">
<Value>action</Value>
</Value>
<Value name="9">
<Value>bizStep</Value>
</Value>
<Value name="10">
<Value>disposition</Value>
</Value>
<Value name="11">
<Value>readPoint</Value>
</Value>
<Value name="12">
<Value>bizLocation</Value>
</Value>
<Value name="13">
<Value>extension</Value>
</Value>
<Value name="14">
<Value>any</Value>
</Value>
</Data>
<Type>%Storage.Serial</Type>
}

}
