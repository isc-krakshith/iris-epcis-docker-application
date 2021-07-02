/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.QuantityEventType Extends EPCIS.intersystems.client.ns2.EPCISEventType [ CompileAfter = (EPCIS.intersystems.client.ns2.BusinessStepIDType, EPCIS.intersystems.client.ns2.DispositionIDType, EPCIS.intersystems.client.ns2.EPCClassType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "QuantityEventType";

Property epcClass As EPCIS.intersystems.client.ns2.EPCClassType(XMLNAME = "epcClass") [ Required ];

Property quantity As %xsd.int(XMLNAME = "quantity") [ Required ];

Property bizStep As EPCIS.intersystems.client.ns2.BusinessStepIDType(XMLNAME = "bizStep");

Property disposition As EPCIS.intersystems.client.ns2.DispositionIDType(XMLNAME = "disposition");

Property readPoint As EPCIS.intersystems.client.ns2.ReadPointType(XMLNAME = "readPoint");

Property bizLocation As EPCIS.intersystems.client.ns2.BusinessLocationType(XMLNAME = "bizLocation");

Property bizTransactionList As list Of EPCIS.intersystems.client.ns2.BusinessTransactionType(XMLITEMNAME = "bizTransaction", XMLNAME = "bizTransactionList", XMLPROJECTION = "COLLECTION");

Property extension As EPCIS.intersystems.client.ns2.QuantityEventExtensionType(XMLNAME = "extension");

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
<Value>epcClass</Value>
</Value>
<Value name="6">
<Value>quantity</Value>
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
