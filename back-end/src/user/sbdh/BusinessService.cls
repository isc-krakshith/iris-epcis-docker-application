/// Created from: c:/temp/epcis/businessscope.xsd
Class EPCIS.sbdh.BusinessService Extends (%SerialObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

Parameter XMLNAME = "BusinessService";

Parameter XMLSEQUENCE = 1;

Property BusinessServiceName As %String(MAXLEN = "", XMLNAME = "BusinessServiceName");

Property ServiceTransaction As EPCIS.sbdh.ServiceTransaction(XMLNAME = "ServiceTransaction");

Storage Default
{
<Data name="BusinessServiceState">
<Value name="1">
<Value>BusinessServiceName</Value>
</Value>
<Value name="2">
<Value>ServiceTransaction</Value>
</Value>
</Data>
<State>BusinessServiceState</State>
<StreamLocation>^EPCIS.sbdh.BusinessServiceS</StreamLocation>
<Type>%Storage.Serial</Type>
}

}
