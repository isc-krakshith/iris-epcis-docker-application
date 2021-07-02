/// Quantity Event captures an event that takes place with respect to a specified quantity of
/// object class.
/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.QuantityEventType Extends EPCIS.epcis.EPCISEventType [ CompileAfter = (EPCIS.epcis.BusinessStepIDType, EPCIS.epcis.DispositionIDType, EPCIS.epcis.EPCClassType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "QuantityEventType";

Property epcClass As EPCIS.epcis.EPCClassType(XMLNAME = "epcClass") [ Required ];

Property quantity As %xsd.int(XMLNAME = "quantity") [ Required ];

Property bizStep As EPCIS.epcis.BusinessStepIDType(XMLNAME = "bizStep");

Property disposition As EPCIS.epcis.DispositionIDType(XMLNAME = "disposition");

Property readPoint As EPCIS.epcis.ReadPointType(XMLNAME = "readPoint");

Property bizLocation As EPCIS.epcis.BusinessLocationType(XMLNAME = "bizLocation");

Property bizTransactionList As list Of EPCIS.epcis.BusinessTransactionType(XMLITEMNAME = "bizTransaction", XMLNAME = "bizTransactionList", XMLPROJECTION = "COLLECTION");

Property extension As EPCIS.epcis.QuantityEventExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="QuantityEventTypeDefaultData">
<Subscript>"QuantityEventType"</Subscript>
<Value name="1">
<Value>epcClass</Value>
</Value>
<Value name="2">
<Value>quantity</Value>
</Value>
<Value name="3">
<Value>bizStep</Value>
</Value>
<Value name="4">
<Value>disposition</Value>
</Value>
<Value name="5">
<Value>readPoint</Value>
</Value>
<Value name="6">
<Value>bizLocation</Value>
</Value>
<Value name="7">
<Value>bizTransactionList</Value>
</Value>
<Value name="8">
<Value>extension</Value>
</Value>
<Value name="9">
<Value>any</Value>
</Value>
</Data>
<DefaultData>QuantityEventTypeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
