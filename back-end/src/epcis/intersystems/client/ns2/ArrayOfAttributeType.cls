/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.ArrayOfAttributeType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "ArrayOfAttributeType";

Parameter XMLSEQUENCE = 1;

Property AttributeType As list Of EPCIS.intersystems.client.ns2.AttributeType(XMLNAME = "AttributeType", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ArrayOfAttributeTypeState">
<Value name="1">
<Value>AttributeType</Value>
</Value>
</Data>
<State>ArrayOfAttributeTypeState</State>
<StreamLocation>^EPCIS.inte1779.ArrayOfAttr5B0BS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
