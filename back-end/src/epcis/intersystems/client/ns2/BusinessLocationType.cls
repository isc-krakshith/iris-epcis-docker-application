/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.BusinessLocationType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ CompileAfter = EPCIS.intersystems.client.ns2.BusinessLocationIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "BusinessLocationType";

Parameter XMLSEQUENCE = 1;

Property id As EPCIS.intersystems.client.ns2.BusinessLocationIDType(XMLNAME = "id") [ Required ];

Property extension As EPCIS.intersystems.client.ns2.BusinessLocationExtensionType(XMLNAME = "extension");

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
<StreamLocation>^EPCIS.inte1779.BusinessLoc8286S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
