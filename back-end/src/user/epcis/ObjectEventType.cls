/// Object Event captures information about an event pertaining to one or more
/// objects identified by EPCs.
/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.ObjectEventType Extends EPCIS.epcis.EPCISEventType [ CompileAfter = (EPCIS.epcis.ActionType, EPCIS.epcis.BusinessStepIDType, EPCIS.epcis.DispositionIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "ObjectEventType";

Property epcList As list Of EPCIS.epcglobal.EPC(SQLPROJECTION = "column", STORAGEDEFAULT = "array", XMLITEMNAME = "epc", XMLNAME = "epcList", XMLPROJECTION = "COLLECTION");

Property action As EPCIS.epcis.ActionType(XMLNAME = "action");

Property bizStep As EPCIS.epcis.BusinessStepIDType(XMLNAME = "bizStep");

Property disposition As EPCIS.epcis.DispositionIDType(XMLNAME = "disposition");

Property readPoint As EPCIS.epcis.ReadPointType(XMLNAME = "readPoint");

Property bizLocation As EPCIS.epcis.BusinessLocationType(XMLNAME = "bizLocation");

Property bizTransactionList As list Of EPCIS.epcis.BusinessTransactionType(SQLPROJECTION = "column", STORAGEDEFAULT = "array", XMLITEMNAME = "bizTransaction", XMLNAME = "bizTransactionList", XMLPROJECTION = "COLLECTION");

Property extension As EPCIS.epcis.ObjectEventExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(REFNAMESPACE = "http://epcis.gs1uk.org/nhs/", XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Index epcListIndex On epcList(ELEMENTS);

Index bizTransactionListIndex On bizTransactionList(ELEMENTS);

Index anyListIndex On any(ELEMENTS);

Index bizStepBitmapIndex On bizStep [ Type = bitmap ];

Storage Default
{
<Data name="ObjectEventTypeDefaultData">
<Subscript>"ObjectEventType"</Subscript>
<Value name="1">
<Value>action</Value>
</Value>
<Value name="2">
<Value>bizStep</Value>
</Value>
<Value name="3">
<Value>disposition</Value>
</Value>
<Value name="4">
<Value>readPoint</Value>
</Value>
<Value name="5">
<Value>bizLocation</Value>
</Value>
<Value name="6">
<Value>extension</Value>
</Value>
<Value name="7">
<Value>any</Value>
</Value>
</Data>
<Data name="bizTransactionList">
<Attribute>bizTransactionList</Attribute>
<Structure>subnode</Structure>
<Subscript>"EPCIS.epcis.ObjectEventType.bizTransactionList"</Subscript>
</Data>
<Data name="epcList">
<Attribute>epcList</Attribute>
<Structure>subnode</Structure>
<Subscript>"EPCIS.epcis.ObjectEventType.epcList"</Subscript>
</Data>
<DefaultData>ObjectEventTypeDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
