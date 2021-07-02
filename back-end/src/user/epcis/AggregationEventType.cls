/// Aggregation Event captures an event that applies to objects that
/// have a physical association with one another.
/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.AggregationEventType Extends EPCIS.epcis.EPCISEventType [ CompileAfter = (EPCIS.epcis.ActionType, EPCIS.epcis.BusinessStepIDType, EPCIS.epcis.DispositionIDType, EPCIS.epcis.ParentIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "AggregationEventType";

Property parentID As EPCIS.epcis.ParentIDType(XMLNAME = "parentID");

Property childEPCs As list Of EPCIS.epcglobal.EPC(XMLITEMNAME = "epc", XMLNAME = "childEPCs", XMLPROJECTION = "COLLECTION") [ Required ];

Property action As EPCIS.epcis.ActionType(XMLNAME = "action") [ Required ];

Property bizStep As EPCIS.epcis.BusinessStepIDType(XMLNAME = "bizStep");

Property disposition As EPCIS.epcis.DispositionIDType(XMLNAME = "disposition");

Property readPoint As EPCIS.epcis.ReadPointType(XMLNAME = "readPoint");

Property bizLocation As EPCIS.epcis.BusinessLocationType(XMLNAME = "bizLocation");

Property bizTransactionList As list Of EPCIS.epcis.BusinessTransactionType(XMLITEMNAME = "bizTransaction", XMLNAME = "bizTransactionList", XMLPROJECTION = "COLLECTION");

Property extension As EPCIS.epcis.AggregationEventExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="AggregationEventTypeDefaultData">
<Subscript>"AggregationEventType"</Subscript>
<Value name="1">
<Value>parentID</Value>
</Value>
<Value name="2">
<Value>childEPCs</Value>
</Value>
<Value name="3">
<Value>action</Value>
</Value>
<Value name="4">
<Value>bizStep</Value>
</Value>
<Value name="5">
<Value>disposition</Value>
</Value>
<Value name="6">
<Value>readPoint</Value>
</Value>
<Value name="7">
<Value>bizLocation</Value>
</Value>
<Value name="8">
<Value>bizTransactionList</Value>
</Value>
<Value name="9">
<Value>extension</Value>
</Value>
<Value name="10">
<Value>any</Value>
</Value>
</Data>
<DefaultData>AggregationEventTypeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
