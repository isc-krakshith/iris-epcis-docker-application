/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.EPCISHeaderType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "EPCISHeaderType";

Parameter XMLSEQUENCE = 1;

Property StandardBusinessDocumentHeader As EPCIS.intersystems.client.s0.StandardBusinessDocumentHeader(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader", XMLNAME = "StandardBusinessDocumentHeader", XMLREF = 1);

Property extension As EPCIS.intersystems.client.ns2.EPCISHeaderExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="EPCISHeaderTypeState">
<Value name="1">
<Value>StandardBusinessDocumentHeader</Value>
</Value>
<Value name="2">
<Value>extension</Value>
</Value>
<Value name="3">
<Value>any</Value>
</Value>
</Data>
<State>EPCISHeaderTypeState</State>
<StreamLocation>^EPCIS.inte1779.EPCISHeaderB4DES</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
