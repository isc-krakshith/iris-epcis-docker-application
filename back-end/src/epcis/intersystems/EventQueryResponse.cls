Class EPCIS.intersystems.EventQueryResponse Extends (Ens.Response, %JSON.Adaptor) [ ProcedureBlock ]
{

Property EventQueryResult As list Of EPCIS.intersystems.client.ns2.EPCISDocumentType(XMLITEMNAME = "Document");

Storage Default
{
<Data name="EventQueryResponseDefaultData">
<Subscript>"EventQueryResponse"</Subscript>
<Value name="1">
<Value>EventQueryResult</Value>
</Value>
</Data>
<DefaultData>EventQueryResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

/// The XMLIGNOREINVALIDTAG parameter allows the programmer to control handling of unexpected
/// elements in the XML input.
/// The XMLIGNOREINVALIDTAG parameter will only take affect if XMLSEQUENCE = 0 (the default).
/// By default (XMLIGNOREINVALIDTAG = 0), will treat an unexpected element as an error.
/// If XMLIGNOREINVALIDTAG is set = 1 and XMLSEQUENCE = 0, then unexpected elements will be ignored. 
Parameter XMLIGNOREINVALIDTAG As BOOLEAN = 1;

}
