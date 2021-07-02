/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.QuantityEventExtensionType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "QuantityEventExtensionType";

Parameter XMLSEQUENCE = 1;

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="QuantityEventExtensionTypeState">
<Value name="1">
<Value>any</Value>
</Value>
</Data>
<State>QuantityEventExtensionTypeState</State>
<StreamLocation>^EPCIS.epcis.QuantityEve5A2AS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
