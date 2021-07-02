/// EPCglobal document properties for all messages.
/// Created from: c:/temp/epcis/epcglobal.xsd
Class EPCIS.epcglobal.Document Extends (%SerialObject, %XML.Adaptor) [ Abstract, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:xsd:1";

Parameter XMLNAME = "Document";

Parameter XMLSEQUENCE = 1;

/// The version of the schema corresponding to which the instance conforms.
Property schemaVersion As %Numeric(XMLNAME = "schemaVersion", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// The date the message was created. Used for auditing and logging.
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
<StreamLocation>^EPCIS.epcglobal.DocumentS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
