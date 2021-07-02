/// Created from: c:/temp/epcis/partner.xsd
Class EPCIS.sbdh.Partner Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "Partner";

Parameter XMLSEQUENCE = 1;

Property Identifier As EPCIS.sbdh.PartnerIdentification(XMLNAME = "Identifier") [ Required ];

Property ContactInformation As list Of EPCIS.sbdh.ContactInformation(XMLNAME = "ContactInformation", XMLPROJECTION = "ELEMENT");

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
<StreamLocation>^EPCIS.sbdh.PartnerS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
