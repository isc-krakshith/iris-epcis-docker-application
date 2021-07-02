/// Created from: c:/temp/epcis/manifest.xsd
Class EPCIS.sbdh.Manifest Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "Manifest";

Parameter XMLSEQUENCE = 1;

Property NumberOfItems As %Integer(XMLNAME = "NumberOfItems");

Property ManifestItem As list Of EPCIS.sbdh.ManifestItem(XMLNAME = "ManifestItem", XMLPROJECTION = "ELEMENT");

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
<StreamLocation>^EPCIS.sbdh.ManifestS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
