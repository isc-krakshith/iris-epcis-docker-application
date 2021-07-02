/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.EmptyParms Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "EmptyParms";

Parameter XMLSEQUENCE = 1;

Storage Default
{
<StreamLocation>^EPCIS.epcisq.EmptyParmsS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
