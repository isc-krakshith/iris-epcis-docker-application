/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.s0.Manifest Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "Manifest";

Parameter XMLSEQUENCE = 1;

Property NumberOfItems As %Integer(XMLNAME = "NumberOfItems");

Property ManifestItem As list Of EPCIS.intersystems.client.s0.ManifestItem(XMLNAME = "ManifestItem", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ManifestState">
<Value name="1">
<Value>NumberOfItems</Value>
</Value>
<Value name="2">
<Value>ManifestItem</Value>
</Value>
</Data>
<State>ManifestState</State>
<StreamLocation>^EPCIS.intersystem184F.ManifestS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
