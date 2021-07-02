/// Created from: c:/temp/epcis/standardbusinessdocumentheader.xsd
Class EPCIS.sbdh.StandardBusinessDocumentHeader Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "StandardBusinessDocumentHeader";

Parameter XMLSEQUENCE = 1;

Property HeaderVersion As %String(MAXLEN = "", XMLNAME = "HeaderVersion");

Property Sender As list Of EPCIS.sbdh.Partner(XMLNAME = "Sender", XMLPROJECTION = "ELEMENT");

Property Receiver As list Of EPCIS.sbdh.Partner(XMLNAME = "Receiver", XMLPROJECTION = "ELEMENT");

Property DocumentIdentification As EPCIS.sbdh.DocumentIdentification(XMLNAME = "DocumentIdentification");

Property Manifest As EPCIS.sbdh.Manifest(XMLNAME = "Manifest");

Property BusinessScope As list Of EPCIS.sbdh.Scope(XMLITEMNAME = "Scope", XMLNAME = "BusinessScope", XMLPROJECTION = "COLLECTION");

Storage Default
{
<Data name="StandardBusinessDocumentHeaderState">
<Value name="1">
<Value>HeaderVersion</Value>
</Value>
<Value name="2">
<Value>Sender</Value>
</Value>
<Value name="3">
<Value>Receiver</Value>
</Value>
<Value name="4">
<Value>DocumentIdentification</Value>
</Value>
<Value name="5">
<Value>Manifest</Value>
</Value>
<Value name="6">
<Value>BusinessScope</Value>
</Value>
</Data>
<State>StandardBusinessDocumentHeaderState</State>
<StreamLocation>^EPCIS.sbdh.StandardBusA17BS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
