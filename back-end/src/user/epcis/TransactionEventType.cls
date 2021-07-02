/// Transaction Event describes the association or disassociation of physical objects to one or more business
/// transactions.
/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.TransactionEventType Extends (%Persistent, EPCIS.epcis.EPCISEventType, %XML.Adaptor) [ CompileAfter = (EPCIS.epcis.ActionType, EPCIS.epcis.BusinessStepIDType, EPCIS.epcis.DispositionIDType, EPCIS.epcis.ParentIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "TransactionEventType";

Property bizTransactionList As list Of EPCIS.epcis.BusinessTransactionType(XMLITEMNAME = "bizTransaction", XMLNAME = "bizTransactionList", XMLPROJECTION = "COLLECTION") [ Required ];

Property parentID As EPCIS.epcis.ParentIDType(XMLNAME = "parentID");

Property epcList As list Of EPCIS.epcglobal.EPC(XMLITEMNAME = "epc", XMLNAME = "epcList", XMLPROJECTION = "COLLECTION") [ Required ];

Property action As EPCIS.epcis.ActionType(XMLNAME = "action") [ Required ];

Property bizStep As EPCIS.epcis.BusinessStepIDType(XMLNAME = "bizStep");

Property disposition As EPCIS.epcis.DispositionIDType(XMLNAME = "disposition");

Property readPoint As EPCIS.epcis.ReadPointType(XMLNAME = "readPoint");

Property bizLocation As EPCIS.epcis.BusinessLocationType(XMLNAME = "bizLocation");

Property extension As EPCIS.epcis.TransactionEventExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(REFNAMESPACE = "http://epcis.gs1uk.org/nhs/", XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Index epcListIndex On epcList(ELEMENTS);

Index bizTransactionListIndex On bizTransactionList(ELEMENTS);

Index anyListIndex On any(ELEMENTS);

Index bizStepBitmapIndex On bizStep [ Type = bitmap ];

Storage Default
{
<Data name="TransactionEventTypeDefaultData">
<Subscript>"TransactionEventType"</Subscript>
<Value name="1">
<Value>bizTransactionList</Value>
</Value>
<Value name="2">
<Value>parentID</Value>
</Value>
<Value name="3">
<Value>epcList</Value>
</Value>
<Value name="4">
<Value>action</Value>
</Value>
<Value name="5">
<Value>bizStep</Value>
</Value>
<Value name="6">
<Value>disposition</Value>
</Value>
<Value name="7">
<Value>readPoint</Value>
</Value>
<Value name="8">
<Value>bizLocation</Value>
</Value>
<Value name="9">
<Value>extension</Value>
</Value>
<Value name="10">
<Value>any</Value>
</Value>
<Value name="11">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="12">
<Value>eventTime</Value>
</Value>
<Value name="13">
<Value>recordTime</Value>
</Value>
<Value name="14">
<Value>eventTimeZoneOffset</Value>
</Value>
<Value name="15">
<Value>baseExtension</Value>
</Value>
</Data>
<DataLocation>^EPCIS.epcis.TransactionEv1BD</DataLocation>
<DefaultData>TransactionEventTypeDefaultData</DefaultData>
<IdLocation>^EPCIS.epcis.TransactionEv1BD</IdLocation>
<IndexLocation>^EPCIS.epcis.TransactionEv1BI</IndexLocation>
<StreamLocation>^EPCIS.epcis.TransactionEv1BS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
