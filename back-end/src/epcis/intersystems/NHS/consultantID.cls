/// Created from: C:\temp\EPCIS\nhs.xsd
Class EPCIS.intersystems.NHS.consultantID Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://epcis.gs1uk.org/nhs/";

Parameter XMLNAME = "consultantID";

Parameter XMLSEQUENCE = 1;

Property content As %String(MAXLEN = "", XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property epc As %String(MAXLEN = "", XMLNAME = "epc", XMLPROJECTION = "ATTRIBUTE");

Property consultantPAS As %String(MAXLEN = "", XMLNAME = "consultantPAS", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="consultantIDState">
<Value name="1">
<Value>content</Value>
</Value>
<Value name="2">
<Value>epc</Value>
</Value>
<Value name="3">
<Value>consultantPAS</Value>
</Value>
</Data>
<State>consultantIDState</State>
<StreamLocation>^EPCIS.intersy21F7.consultantIDS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
