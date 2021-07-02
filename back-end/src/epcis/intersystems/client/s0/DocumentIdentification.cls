/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.s0.DocumentIdentification Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "DocumentIdentification";

Parameter XMLSEQUENCE = 1;

Property Standard As %String(MAXLEN = "", XMLNAME = "Standard");

Property TypeVersion As %String(MAXLEN = "", XMLNAME = "TypeVersion");

Property InstanceIdentifier As %String(MAXLEN = "", XMLNAME = "InstanceIdentifier");

Property Type As %String(MAXLEN = "", XMLNAME = "Type");

Property MultipleType As %Boolean(XMLNAME = "MultipleType");

Property CreationDateAndTime As %TimeStamp(XMLNAME = "CreationDateAndTime");

Storage Default
{
<Data name="DocumentIdentificationState">
<Value name="1">
<Value>Standard</Value>
</Value>
<Value name="2">
<Value>TypeVersion</Value>
</Value>
<Value name="3">
<Value>InstanceIdentifier</Value>
</Value>
<Value name="4">
<Value>Type</Value>
</Value>
<Value name="5">
<Value>MultipleType</Value>
</Value>
<Value name="6">
<Value>CreationDateAndTime</Value>
</Value>
</Data>
<State>DocumentIdentificationState</State>
<StreamLocation>^EPCIS.inte184F.DocumentIde5C0FS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
