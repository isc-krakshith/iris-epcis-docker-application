/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.s0.Partner Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "Partner";

Parameter XMLSEQUENCE = 1;

Property Identifier As EPCIS.intersystems.client.s0.PartnerIdentification(XMLNAME = "Identifier") [ Required ];

Property ContactInformation As list Of EPCIS.intersystems.client.s0.ContactInformation(XMLNAME = "ContactInformation", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="PartnerState">
<Value name="1">
<Value>Identifier</Value>
</Value>
<Value name="2">
<Value>ContactInformation</Value>
</Value>
</Data>
<State>PartnerState</State>
<StreamLocation>^EPCIS.intersystems184F.PartnerS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
