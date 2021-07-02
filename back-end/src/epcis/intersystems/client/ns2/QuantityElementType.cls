/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.ns2.QuantityElementType Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ CompileAfter = (EPCIS.intersystems.client.ns2.EPCClassType, EPCIS.intersystems.client.ns2.UOMType), ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis:xsd:1";

Parameter XMLNAME = "QuantityElementType";

Parameter XMLSEQUENCE = 1;

Property epcClass As EPCIS.intersystems.client.ns2.EPCClassType(XMLNAME = "epcClass") [ Required ];

Property quantity As %Numeric(XMLNAME = "quantity");

Property uom As EPCIS.intersystems.client.ns2.UOMType(XMLNAME = "uom");

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
<StreamLocation>^EPCIS.inte1779.QuantityEle53BCS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
