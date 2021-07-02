/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.QueryScheduleExtensionType Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "QueryScheduleExtensionType";

Parameter XMLSEQUENCE = 1;

Property any As list Of %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="QueryScheduleExtensionTypeState">
<Value name="1">
<Value>any</Value>
</Value>
</Data>
<State>QueryScheduleExtensionTypeState</State>
<StreamLocation>^EPCIS.epcisq.QueryScheduBEF4S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
