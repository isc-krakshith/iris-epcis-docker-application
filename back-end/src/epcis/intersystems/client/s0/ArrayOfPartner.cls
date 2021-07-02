/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.s0.ArrayOfPartner Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "ArrayOfPartner";

Parameter XMLSEQUENCE = 1;

Property Partner As list Of EPCIS.intersystems.client.s0.Partner(XMLNAME = "Partner", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ArrayOfPartnerState">
<Value name="1">
<Value>Partner</Value>
</Value>
</Data>
<State>ArrayOfPartnerState</State>
<StreamLocation>^EPCIS.inter184F.ArrayOfPartnerS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
