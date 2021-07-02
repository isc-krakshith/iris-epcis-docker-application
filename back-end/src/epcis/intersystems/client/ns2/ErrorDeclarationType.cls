/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.ErrorDeclarationType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ CompileAfter = (EPCIS.intersystems.client.ns2.ErrorReasonIDType, EPCIS.intersystems.client.ns2.EventIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "ErrorDeclarationType";

Parameter XMLSEQUENCE = 1;

Property declarationTime As %TimeStamp(XMLNAME = "declarationTime");

Property reason As EPCIS.intersystems.client.ns2.ErrorReasonIDType(XMLNAME = "reason");

Property correctiveEventIDs As list Of EPCIS.intersystems.client.ns2.EventIDType(XMLITEMNAME = "correctiveEventID", XMLNAME = "correctiveEventIDs", XMLPROJECTION = "COLLECTION");

Property extension As EPCIS.intersystems.client.ns2.ErrorDeclarationExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="ErrorDeclarationTypeState">
<Value name="1">
<Value>declarationTime</Value>
</Value>
<Value name="2">
<Value>reason</Value>
</Value>
<Value name="3">
<Value>correctiveEventIDs</Value>
</Value>
<Value name="4">
<Value>extension</Value>
</Value>
<Value name="5">
<Value>any</Value>
</Value>
</Data>
<State>ErrorDeclarationTypeState</State>
<StreamLocation>^EPCIS.inte1779.ErrorDeclar8C11S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
