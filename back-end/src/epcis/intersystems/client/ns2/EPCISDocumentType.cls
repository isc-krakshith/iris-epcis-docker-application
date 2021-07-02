/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.EPCISDocumentType Extends EPCIS.intersystems.client.ns3.Document [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISDocumentType";

Property EPCISHeader As EPCIS.intersystems.client.ns2.EPCISHeaderType(XMLNAME = "EPCISHeader");

Property EPCISBody As EPCIS.intersystems.client.ns2.EPCISBodyType(XMLNAME = "EPCISBody") [ Required ];

Property extension As EPCIS.intersystems.client.ns2.EPCISDocumentExtensionType(XMLNAME = "extension");

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
<Type>%Storage.Serial</Type>
}

}
