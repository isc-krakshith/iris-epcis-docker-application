/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.AttributeType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "AttributeType";

Parameter XMLSEQUENCE = 1;

Property id As %xsd.anyURI(XMLNAME = "id", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="AttributeTypeState">
<Value name="1">
<Value>id</Value>
</Value>
</Data>
<State>AttributeTypeState</State>
<StreamLocation>^EPCIS.inters1779.AttributeTypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
