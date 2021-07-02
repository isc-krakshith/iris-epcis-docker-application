/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.BusinessLocationType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ CompileAfter = EPCIS.epcis.BusinessLocationIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "BusinessLocationType";

Parameter XMLSEQUENCE = 1;

Property id As EPCIS.epcis.BusinessLocationIDType(XMLNAME = "id");

Property extension As EPCIS.epcis.BusinessLocationExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="BusinessLocationTypeState">
<Value name="1">
<Value>id</Value>
</Value>
<Value name="2">
<Value>extension</Value>
</Value>
<Value name="3">
<Value>any</Value>
</Value>
</Data>
<State>BusinessLocationTypeState</State>
<StreamLocation>^EPCIS.epcis.BusinessLoc8286S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
