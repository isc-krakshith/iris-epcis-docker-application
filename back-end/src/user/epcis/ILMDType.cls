/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.ILMDType Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "ILMDType";

Parameter XMLSEQUENCE = 1;

Property extension As EPCIS.epcis.ILMDExtensionType(XMLNAME = "extension");

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
<StreamLocation>^EPCIS.epcis.ILMDTypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
