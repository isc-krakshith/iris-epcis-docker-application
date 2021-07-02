/// Created from: http://localhost:52773/csp/user/EPCIS.LocalService.cls?WSDL=1
Class EPCIS.intersystems.client.s0.ArrayOfScopeInformationItemString Extends (%SerialObject, %XML.Adaptor, %JSON.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "ArrayOfScopeInformationItemString";

Parameter XMLSEQUENCE = 1;

Property ScopeInformationItem As list Of %String(MAXLEN = "", XMLNAME = "ScopeInformationItem", XMLPROJECTION = "ELEMENT");

Storage Default
{
<Data name="ArrayOfScopeInformationItemStringState">
<Value name="1">
<Value>ScopeInformationItem</Value>
</Value>
</Data>
<State>ArrayOfScopeInformationItemStringState</State>
<StreamLocation>^EPCIS.inte184F.ArrayOfScop154BS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
