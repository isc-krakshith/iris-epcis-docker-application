/// Created from: c:/temp/epcis/epcglobal-epcis-query-1_2.xsd
Class EPCIS.epcisq.QueryResultsBody Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 0;

Parameter NAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

Parameter XMLNAME = "QueryResultsBody";

Parameter XMLSEQUENCE = 0;

Property EventList As EPCIS.epcis.EventListType(XMLNAME = "EventList");

Property VocabularyList As EPCIS.epcis.VocabularyListType(XMLNAME = "VocabularyList");

Storage Default
{
<Data name="QueryResultsBodyState">
<Value name="1">
<Value>EventList</Value>
</Value>
<Value name="2">
<Value>VocabularyList</Value>
</Value>
</Data>
<State>QueryResultsBodyState</State>
<StreamLocation>^EPCIS.epcisq.QueryResultsBodyS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
