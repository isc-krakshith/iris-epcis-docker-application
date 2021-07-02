/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.ReadPointType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ CompileAfter = EPCIS.epcis.ReadPointIDType, ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "ReadPointType";

Parameter XMLSEQUENCE = 1;

Property id As EPCIS.epcis.ReadPointIDType(XMLNAME = "id") [ Required ];

Property extension As EPCIS.epcis.ReadPointExtensionType(XMLNAME = "extension");

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="ReadPointTypeState">
<Value name="1">
<Value>id</Value>
</Value>
<Value name="2">
<Value>extension</Value>
</Value>
<Value name="3">
<Value>any</Value>
</Value>
</Data>
<State>ReadPointTypeState</State>
<StreamLocation>^EPCIS.epcis.ReadPointTypeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
