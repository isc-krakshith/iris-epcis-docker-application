/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.EPCISQueryDocumentExtensionType Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "EPCISQueryDocumentExtensionType";

Parameter XMLSEQUENCE = 1;

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="EPCISQueryDocumentExtensionTypeState">
<Value name="1">
<Value>any</Value>
</Value>
</Data>
<State>EPCISQueryDocumentExtensionTypeState</State>
<StreamLocation>^EPCIS.epcisq.EPCISQueryDB83CS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
