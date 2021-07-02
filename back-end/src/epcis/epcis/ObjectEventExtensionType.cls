/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.ObjectEventExtensionType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "ObjectEventExtensionType";

Parameter XMLSEQUENCE = 1;

Property quantityList As list Of EPCIS.epcis.QuantityElementType(XMLITEMNAME = "quantityElement", XMLNAME = "quantityList", XMLPROJECTION = "COLLECTION");

Property sourceList As list Of EPCIS.epcis.SourceDestType(XMLITEMNAME = "source", XMLNAME = "sourceList", XMLPROJECTION = "COLLECTION");

Property destinationList As list Of EPCIS.epcis.SourceDestType(XMLITEMNAME = "destination", XMLNAME = "destinationList", XMLPROJECTION = "COLLECTION");

Property ilmd As EPCIS.epcis.ILMDType(XMLNAME = "ilmd");

Property extension As EPCIS.epcis.ObjectEventExtension2Type(XMLNAME = "extension");

Storage Default
{
<Data name="ObjectEventExtensionTypeState">
<Value name="1">
<Value>quantityList</Value>
</Value>
<Value name="2">
<Value>sourceList</Value>
</Value>
<Value name="3">
<Value>destinationList</Value>
</Value>
<Value name="4">
<Value>ilmd</Value>
</Value>
<Value name="5">
<Value>extension</Value>
</Value>
</Data>
<State>ObjectEventExtensionTypeState</State>
<StreamLocation>^EPCIS.epcis.ObjectEvent3DB0S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
