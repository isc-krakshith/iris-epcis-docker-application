/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.s0.ArrayOfManifestItem Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "ArrayOfManifestItem";

Parameter XMLSEQUENCE = 1;

Property ManifestItem As list Of EPCIS.intersystems.client.s0.ManifestItem(XMLNAME = "ManifestItem", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ArrayOfManifestItemState">
<Value name="1">
<Value>ManifestItem</Value>
</Value>
</Data>
<State>ArrayOfManifestItemState</State>
<StreamLocation>^EPCIS.inte184F.ArrayOfMani6783S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
