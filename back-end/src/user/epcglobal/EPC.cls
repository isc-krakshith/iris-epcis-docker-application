/// EPC represents the Electronic Product Code.
/// Created from: c:/temp/epcis/epcglobal.xsd
Class EPCIS.epcglobal.EPC Extends (%Persistent, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:xsd:1";

Parameter XMLNAME = "EPC";

Parameter XMLSEQUENCE = 1;

Property content As %String(MAXLEN = "", XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property role As %String(XMLPROJECTION = "NONE");

Index roleIndex On role;

Index contentIndex On content;

Storage Default
{
<Data name="EPCDefaultData">
<Subscript>"1"</Subscript>
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
</Data>
<Data name="EPCState">
<Value name="1">
<Value>content</Value>
</Value>
<Value name="2">
<Value>role</Value>
</Value>
</Data>
<DataLocation>^EPCIS.epcglobal.EPCD</DataLocation>
<DefaultData>EPCDefaultData</DefaultData>
<IdLocation>^EPCIS.epcglobal.EPCD</IdLocation>
<IndexLocation>^EPCIS.epcglobal.EPCI</IndexLocation>
<State>EPCState</State>
<StreamLocation>^EPCIS.epcglobal.EPCS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

Index epcIndex On content;

}
