/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.EPCISDocumentExtensionType Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISDocumentExtensionType";

Parameter XMLSEQUENCE = 1;

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="EPCISDocumentExtensionTypeState">
<Value name="1">
<Value>any</Value>
</Value>
</Data>
<State>EPCISDocumentExtensionTypeState</State>
<StreamLocation>^EPCIS.epcis.EPCISDocumeAA8FS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
