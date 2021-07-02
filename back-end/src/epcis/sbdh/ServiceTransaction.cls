/// Created from: c:/temp/epcis/businessscope.xsd
Class EPCIS.sbdh.ServiceTransaction Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ CompileAfter = EPCIS.sbdh.TypeOfServiceTransaction, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "ServiceTransaction";

Parameter XMLSEQUENCE = 1;

Property TypeOfServiceTransaction As EPCIS.sbdh.TypeOfServiceTransaction(XMLNAME = "TypeOfServiceTransaction", XMLPROJECTION = "ATTRIBUTE");

Property IsNonRepudiationRequired As %String(MAXLEN = "", XMLNAME = "IsNonRepudiationRequired", XMLPROJECTION = "ATTRIBUTE");

Property IsAuthenticationRequired As %String(MAXLEN = "", XMLNAME = "IsAuthenticationRequired", XMLPROJECTION = "ATTRIBUTE");

Property IsNonRepudiationOfReceiptRequired As %String(MAXLEN = "", XMLNAME = "IsNonRepudiationOfReceiptRequired", XMLPROJECTION = "ATTRIBUTE");

Property IsIntegrityCheckRequired As %String(MAXLEN = "", XMLNAME = "IsIntegrityCheckRequired", XMLPROJECTION = "ATTRIBUTE");

Property IsApplicationErrorResponseRequested As %String(MAXLEN = "", XMLNAME = "IsApplicationErrorResponseRequested", XMLPROJECTION = "ATTRIBUTE");

Property TimeToAcknowledgeReceipt As %String(MAXLEN = "", XMLNAME = "TimeToAcknowledgeReceipt", XMLPROJECTION = "ATTRIBUTE");

Property TimeToAcknowledgeAcceptance As %String(MAXLEN = "", XMLNAME = "TimeToAcknowledgeAcceptance", XMLPROJECTION = "ATTRIBUTE");

Property TimeToPerform As %String(MAXLEN = "", XMLNAME = "TimeToPerform", XMLPROJECTION = "ATTRIBUTE");

Property Recurrence As %String(MAXLEN = "", XMLNAME = "Recurrence", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="ServiceTransactionState">
<Value name="1">
<Value>TypeOfServiceTransaction</Value>
</Value>
<Value name="2">
<Value>IsNonRepudiationRequired</Value>
</Value>
<Value name="3">
<Value>IsAuthenticationRequired</Value>
</Value>
<Value name="4">
<Value>IsNonRepudiationOfReceiptRequired</Value>
</Value>
<Value name="5">
<Value>IsIntegrityCheckRequired</Value>
</Value>
<Value name="6">
<Value>IsApplicationErrorResponseRequested</Value>
</Value>
<Value name="7">
<Value>TimeToAcknowledgeReceipt</Value>
</Value>
<Value name="8">
<Value>TimeToAcknowledgeAcceptance</Value>
</Value>
<Value name="9">
<Value>TimeToPerform</Value>
</Value>
<Value name="10">
<Value>Recurrence</Value>
</Value>
</Data>
<State>ServiceTransactionState</State>
<StreamLocation>^EPCIS.sbdh.ServiceTransactionS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
