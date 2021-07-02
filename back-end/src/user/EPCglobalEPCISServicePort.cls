Class EPCIS.EPCglobalEPCISServicePort Extends %SOAP.WebClient [ ProcedureBlock ]
{

Method getQueryNames() As %ListOfDataTypes(ELEMENTTYPE="%String",XMLPROJECTION="element",XMLNAME="string") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("getQueryNames","GetQueryNames").Invoke($this,"")
}

Method getStandardVersion() As %String(XMLNAME="GetStandardVersionResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("getStandardVersion","GetStandardVersion").Invoke($this,"")
}

Method getSubscriptionIDs(queryName As %String(REQUIRED=1)) As %ListOfDataTypes(ELEMENTTYPE="%String",XMLPROJECTION="element",XMLNAME="string") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("getSubscriptionIDs","GetSubscriptionIDs").Invoke($this,"",.queryName)
}

Method getVendorVersion() As %String(XMLNAME="GetVendorVersionResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("getVendorVersion","GetVendorVersion").Invoke($this,"")
}

Method poll(ByRef queryName As %String(REQUIRED=1), params As %ListOfObjects(ELEMENTTYPE="EPCIS.epcisq.QueryParam",XMLITEMNAME="param",XMLNAME="params",REQUIRED=1), Output subscriptionID As %String, Output resultsBody As EPCIS.epcisq.QueryResultsBody(REQUIRED=1), Output extension As EPCIS.epcisq.QueryResultsExtensionType, Output any As %ListOfDataTypes(ELEMENTTYPE="%XML.String",XMLNAME="any",XMLPROJECTION="any")) [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Do (..WebMethod("poll","Poll")).Invoke($this,"",.queryName,.params,.subscriptionID,.resultsBody,.extension,.any)
}

Method subscribe(queryName As %String(REQUIRED=1), params As %ListOfObjects(ELEMENTTYPE="EPCIS.epcisq.QueryParam",XMLITEMNAME="param",XMLNAME="params",REQUIRED=1), dest As %xsd.anyURI(REQUIRED=1), controls As EPCIS.epcisq.SubscriptionControls(REQUIRED=1), subscriptionID As %String(REQUIRED=1)) [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Do (..WebMethod("subscribe","Subscribe")).Invoke($this,"",.queryName,.params,.dest,.controls,.subscriptionID)
}

Method unsubscribe(subscriptionID As %String(REQUIRED=1)) [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Do (..WebMethod("unsubscribe","Unsubscribe")).Invoke($this,"",.subscriptionID)
}

/// Non-default elementFormQualified for types XML namespace.
Parameter ELEMENTQUALIFIED = 0;

/// This is the URL used to access the web service.
Parameter LOCATION = "http://localhost:6060/axis/services/EPCglobalEPCISService";

/// This is the namespace used by the Service
Parameter NAMESPACE = "urn:epcglobal:epcis:wsdl:1";

/// Use xsi:type attribute for literal types.
Parameter OUTPUTTYPEATTRIBUTE = 1;

/// Determines handling of Security header.
Parameter SECURITYIN = "ALLOW";

/// This is the name of the Service
Parameter SERVICENAME = "EPCglobalEPCISService";

/// This is the SOAP version supported by the service.
Parameter SOAPVERSION = 1.1;

/// This is the namespace used for types by the Service
Parameter TYPENAMESPACE = "urn:epcglobal:epcis-query:xsd:1";

}
