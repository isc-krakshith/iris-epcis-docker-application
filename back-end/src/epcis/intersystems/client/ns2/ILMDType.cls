/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.ILMDType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "ILMDType";

Parameter XMLSEQUENCE = 1;

Property extension As EPCIS.intersystems.client.ns2.ILMDExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="ILMDTypeState">
<Value name="1">
<Value>extension</Value>
</Value>
<Value name="2">
<Value>any</Value>
</Value>
</Data>
<State>ILMDTypeState</State>
<StreamLocation>^EPCIS.intersystem1779.ILMDTypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
