/// Transformation Event captures an event in which inputs are consumed
/// and outputs are produced
/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.TransformationEventType Extends EPCIS.epcis.EPCISEventType [ CompileAfter = (EPCIS.epcis.BusinessStepIDType, EPCIS.epcis.DispositionIDType, EPCIS.epcis.TransformationIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "TransformationEventType";

Property inputEPCList As list Of %XML.String(XMLITEMNAME = "epc", XMLNAME = "inputEPCList", XMLPROJECTION = "COLLECTION");

// From ObjectEventType

// Property epcList As list Of %XML.String(XMLITEMNAME = "epc", XMLNAME = "epcList", XMLPROJECTION = "COLLECTION");

Property inputQuantityList As list Of EPCIS.epcis.QuantityElementType(XMLITEMNAME = "quantityElement", XMLNAME = "inputQuantityList", XMLPROJECTION = "COLLECTION");

Property outputEPCList As list Of EPCIS.epcglobal.EPC(XMLITEMNAME = "epc", XMLNAME = "outputEPCList", XMLPROJECTION = "COLLECTION");

Property outputQuantityList As list Of EPCIS.epcis.QuantityElementType(XMLITEMNAME = "quantityElement", XMLNAME = "outputQuantityList", XMLPROJECTION = "COLLECTION");

Property transformationID As EPCIS.epcis.TransformationIDType(XMLNAME = "transformationID");

Property bizStep As EPCIS.epcis.BusinessStepIDType(XMLNAME = "bizStep");

Property disposition As EPCIS.epcis.DispositionIDType(XMLNAME = "disposition");

Property readPoint As EPCIS.epcis.ReadPointType(XMLNAME = "readPoint");

Property bizLocation As EPCIS.epcis.BusinessLocationType(XMLNAME = "bizLocation");

Property bizTransactionList As list Of EPCIS.epcis.BusinessTransactionType(XMLITEMNAME = "bizTransaction", XMLNAME = "bizTransactionList", XMLPROJECTION = "COLLECTION");

Property sourceList As list Of EPCIS.epcis.SourceDestType(XMLITEMNAME = "source", XMLNAME = "sourceList", XMLPROJECTION = "COLLECTION");

Property destinationList As list Of EPCIS.epcis.SourceDestType(XMLITEMNAME = "destination", XMLNAME = "destinationList", XMLPROJECTION = "COLLECTION");

Property ilmd As EPCIS.epcis.ILMDType(XMLNAME = "ilmd");

Property extension As EPCIS.epcis.TransformationEventExtensionType(XMLNAME = "extension");

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
<Value>inputEPCList</Value>
</Value>
<Value name="6">
<Value>inputQuantityList</Value>
</Value>
<Value name="7">
<Value>outputEPCList</Value>
</Value>
<Value name="8">
<Value>outputQuantityList</Value>
</Value>
<Value name="9">
<Value>transformationID</Value>
</Value>
<Value name="10">
<Value>bizStep</Value>
</Value>
<Value name="11">
<Value>disposition</Value>
</Value>
<Value name="12">
<Value>readPoint</Value>
</Value>
<Value name="13">
<Value>bizLocation</Value>
</Value>
<Value name="14">
<Value>bizTransactionList</Value>
</Value>
<Value name="15">
<Value>sourceList</Value>
</Value>
<Value name="16">
<Value>destinationList</Value>
</Value>
<Value name="17">
<Value>ilmd</Value>
</Value>
<Value name="18">
<Value>extension</Value>
</Value>
<Value name="19">
<Value>any</Value>
</Value>
</Data>
<Type>%Storage.Serial</Type>
}

}
