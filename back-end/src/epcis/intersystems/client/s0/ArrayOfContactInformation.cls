/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.s0.ArrayOfContactInformation Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "ArrayOfContactInformation";

Parameter XMLSEQUENCE = 1;

Property ContactInformation As list Of EPCIS.intersystems.client.s0.ContactInformation(XMLNAME = "ContactInformation", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ArrayOfContactInformationState">
<Value name="1">
<Value>ContactInformation</Value>
</Value>
</Data>
<State>ArrayOfContactInformationState</State>
<StreamLocation>^EPCIS.inte184F.ArrayOfContF717S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
