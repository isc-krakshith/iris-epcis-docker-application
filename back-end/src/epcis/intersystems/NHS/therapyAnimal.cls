/// Created from: C:\temp\EPCIS\nhs.xsd
Class EPCIS.intersystems.NHS.therapyAnimal Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://epcis.gs1uk.org/nhs/";

Parameter XMLNAME = "therapyAnimal";

Parameter XMLSEQUENCE = 1;

Property content As %String(MAXLEN = "", XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property epc As %String(MAXLEN = "", XMLNAME = "epc", XMLPROJECTION = "ATTRIBUTE");

Property name As %String(MAXLEN = "", XMLNAME = "name", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="therapyAnimalState">
<Value name="1">
<Value>content</Value>
</Value>
<Value name="2">
<Value>epc</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
</Data>
<State>therapyAnimalState</State>
<StreamLocation>^nhs.therapyAnimalS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
