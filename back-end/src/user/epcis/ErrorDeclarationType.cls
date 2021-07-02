/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.ErrorDeclarationType Extends (%SerialObject, %XML.Adaptor) [ CompileAfter = (EPCIS.epcis.ErrorReasonIDType, EPCIS.epcis.EventIDType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "ErrorDeclarationType";

Parameter XMLSEQUENCE = 1;

Property declarationTime As %TimeStamp(XMLNAME = "declarationTime");

Property reason As EPCIS.epcis.ErrorReasonIDType(XMLNAME = "reason");

Property correctiveEventIDs As list Of EPCIS.epcis.EventIDType(XMLITEMNAME = "correctiveEventID", XMLNAME = "correctiveEventIDs", XMLPROJECTION = "COLLECTION");

Property extension As EPCIS.epcis.ErrorDeclarationExtensionType(XMLNAME = "extension");

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
<StreamLocation>^EPCIS.epcis.ErrorDeclar8C11S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
