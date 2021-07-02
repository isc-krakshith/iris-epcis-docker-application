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

Storage Default
{
<Data name="EPCDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>content</Value>
</Value>
<Value name="3">
<Value>role</Value>
</Value>
</Data>
<DataLocation>^EPCIS.epcglobal.EPCD</DataLocation>
<DefaultData>EPCDefaultData</DefaultData>
<IdLocation>^EPCIS.epcglobal.EPCD</IdLocation>
<IndexLocation>^EPCIS.epcglobal.EPCI</IndexLocation>
<StreamLocation>^EPCIS.epcglobal.EPCS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
