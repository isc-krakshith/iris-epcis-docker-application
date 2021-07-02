/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.ErrorDeclarationExtensionType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "ErrorDeclarationExtensionType";

Parameter XMLSEQUENCE = 1;

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="ErrorDeclarationExtensionTypeState">
<Value name="1">
<Value>any</Value>
</Value>
</Data>
<State>ErrorDeclarationExtensionTypeState</State>
<StreamLocation>^EPCIS.epcis.ErrorDeclar4682S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
