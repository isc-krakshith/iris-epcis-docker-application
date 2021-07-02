/// Created from: c:/temp/epcis/businessscope.xsd
Class EPCIS.sbdh.CorrelationInformation Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "CorrelationInformation";

Parameter XMLSEQUENCE = 1;

Property RequestingDocumentCreationDateTime As %TimeStamp(XMLNAME = "RequestingDocumentCreationDateTime");

Property RequestingDocumentInstanceIdentifier As %String(MAXLEN = "", XMLNAME = "RequestingDocumentInstanceIdentifier");

Property ExpectedResponseDateTime As %TimeStamp(XMLNAME = "ExpectedResponseDateTime");

Storage Default
{
<Data name="CorrelationInformationState">
<Value name="1">
<Value>RequestingDocumentCreationDateTime</Value>
</Value>
<Value name="2">
<Value>RequestingDocumentInstanceIdentifier</Value>
</Value>
<Value name="3">
<Value>ExpectedResponseDateTime</Value>
</Value>
</Data>
<State>CorrelationInformationState</State>
<StreamLocation>^EPCIS.sbdh.Correlation4C07S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
