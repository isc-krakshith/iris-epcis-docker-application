/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.AttributeType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
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
<StreamLocation>^EPCIS.epcis.AttributeTypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
