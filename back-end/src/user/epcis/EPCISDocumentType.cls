/// document that contains a Header and a Body.
/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.EPCISDocumentType Extends (%Persistent, EPCIS.epcglobal.Document, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISDocumentType";

Property EPCISHeader As EPCIS.epcis.EPCISHeaderType(XMLNAME = "EPCISHeader");

Property EPCISBody As EPCIS.epcis.EPCISBodyType(XMLNAME = "EPCISBody") [ Required ];

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
<Data name="EPCISDocumentTypeDefaultData">
<Subscript>"1"</Subscript>
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
</Data>
<DataLocation>^EPCIS.epcis.EPCISDocumentTypeD</DataLocation>
<DefaultData>EPCISDocumentTypeDefaultData</DefaultData>
<IdLocation>^EPCIS.epcis.EPCISDocumentTypeD</IdLocation>
<IndexLocation>^EPCIS.epcis.EPCISDocumentTypeI</IndexLocation>
<StreamLocation>^EPCIS.epcis.EPCISDocumentTypeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
