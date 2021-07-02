/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns3.Document Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ Abstract, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:xsd:1";

Parameter XMLNAME = "Document";

Parameter XMLSEQUENCE = 1;

Property schemaVersion As %Numeric(XMLNAME = "schemaVersion", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property creationDate As %TimeStamp(XMLNAME = "creationDate", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Storage Default
{
<Data name="DocumentState">
<Value name="1">
<Value>schemaVersion</Value>
</Value>
<Value name="2">
<Value>creationDate</Value>
</Value>
</Data>
<State>DocumentState</State>
<StreamLocation>^EPCIS.intersystemD7B8.DocumentS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
