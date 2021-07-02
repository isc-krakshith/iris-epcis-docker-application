/// document that contains a Header and a Body.
/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.EPCISDocumentType Extends EPCIS.epcglobal.Document [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISDocumentType";

Property EPCISHeader As EPCIS.epcis.EPCISHeaderType(XMLNAME = "EPCISHeader");

Property EPCISBody As EPCIS.epcis.EPCISBodyType(XMLNAME = "EPCISBody");

Property extension As EPCIS.epcis.EPCISDocumentExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="DocumentState">
<Value name="1">
<Value>schemaVersion</Value>
</Value>
<Value name="2">
<Value>creationDate</Value>
</Value>
<Value name="3">
<Value>EPCISHeader</Value>
</Value>
<Value name="4">
<Value>EPCISBody</Value>
</Value>
<Value name="5">
<Value>extension</Value>
</Value>
<Value name="6">
<Value>any</Value>
</Value>
</Data>
<Data name="EPCISDocumentState">
<Value name="1">
<Value>schemaVersion</Value>
</Value>
<Value name="2">
<Value>creationDate</Value>
</Value>
<Value name="3">
<Value>EPCISHeader</Value>
</Value>
<Value name="4">
<Value>EPCISBody</Value>
</Value>
<Value name="5">
<Value>extension</Value>
</Value>
<Value name="6">
<Value>any</Value>
</Value>
</Data>
<Type>%Storage.Serial</Type>
}

}
