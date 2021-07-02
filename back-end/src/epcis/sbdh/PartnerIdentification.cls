/// Created from: c:/temp/epcis/partner.xsd
Class EPCIS.sbdh.PartnerIdentification Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "PartnerIdentification";

Parameter XMLSEQUENCE = 1;

Property content As %String(MAXLEN = "", XMLNAME = "content", XMLPROJECTION = "CONTENT");

Property Authority As %String(MAXLEN = "", XMLNAME = "Authority", XMLPROJECTION = "ATTRIBUTE");

Storage Default
{
<Data name="PartnerIdentificationState">
<Value name="1">
<Value>content</Value>
</Value>
<Value name="2">
<Value>Authority</Value>
</Value>
</Data>
<State>PartnerIdentificationState</State>
<StreamLocation>^EPCIS.sbdh.PartnerIden5D69S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
