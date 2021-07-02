/// Created from: c:/temp/epcis/standardbusinessdocumentheader.xsd
Class EPCIS.sbdh.StandardBusinessDocument Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "StandardBusinessDocument";

Parameter XMLSEQUENCE = 1;

Property StandardBusinessDocumentHeader As EPCIS.sbdh.StandardBusinessDocumentHeader(REFELEMENTQUALIFIED = 1, REFNAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader", XMLNAME = "StandardBusinessDocumentHeader", XMLREF = 1);

Property any As %XML.String(XMLNAME = "any", XMLPROJECTION = "ANY") [ SqlFieldName = _any ];

Storage Default
{
<Data name="StandardBusinessDocumentState">
<Value name="1">
<Value>StandardBusinessDocumentHeader</Value>
</Value>
<Value name="2">
<Value>any</Value>
</Value>
</Data>
<State>StandardBusinessDocumentState</State>
<StreamLocation>^EPCIS.sbdh.StandardBusEFA0S</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
