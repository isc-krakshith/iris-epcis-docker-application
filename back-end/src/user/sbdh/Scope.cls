/// Created from: c:/temp/epcis/businessscope.xsd
Class EPCIS.sbdh.Scope Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "Scope";

Parameter XMLSEQUENCE = 1;

Property Type As %String(MAXLEN = "", XMLNAME = "Type") [ Required ];

Property InstanceIdentifier As %String(MAXLEN = "", XMLNAME = "InstanceIdentifier") [ Required ];

Property Identifier As %String(MAXLEN = "", XMLNAME = "Identifier");

Property ScopeInformation As list Of %String(MAXLEN = "", REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader", XMLNAME = "ScopeInformation", XMLPROJECTION = "ELEMENT", XMLREF = 1);

Storage Default
{
<Data name="ScopeState">
<Value name="1">
<Value>Type</Value>
</Value>
<Value name="2">
<Value>InstanceIdentifier</Value>
</Value>
<Value name="3">
<Value>Identifier</Value>
</Value>
<Value name="4">
<Value>ScopeInformation</Value>
</Value>
</Data>
<State>ScopeState</State>
<StreamLocation>^EPCIS.sbdh.ScopeS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
