/// Created from: c:/temp/epcis/epcglobal-epcis-1_2.xsd
Class EPCIS.epcis.QuantityElementType Extends (%SerialObject, %XML.Adaptor) [ CompileAfter = (EPCIS.epcis.EPCClassType, EPCIS.epcis.UOMType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "QuantityElementType";

Parameter XMLSEQUENCE = 1;

Property epcClass As EPCIS.epcis.EPCClassType(XMLNAME = "epcClass") [ Required ];

Property quantity As %Numeric(XMLNAME = "quantity");

Property uom As EPCIS.epcis.UOMType(XMLNAME = "uom");

Storage Default
{
<Data name="QuantityElementTypeState">
<Value name="1">
<Value>epcClass</Value>
</Value>
<Value name="2">
<Value>quantity</Value>
</Value>
<Value name="3">
<Value>uom</Value>
</Value>
</Data>
<State>QuantityElementTypeState</State>
<StreamLocation>^EPCIS.epcis.QuantityEle53BCS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
