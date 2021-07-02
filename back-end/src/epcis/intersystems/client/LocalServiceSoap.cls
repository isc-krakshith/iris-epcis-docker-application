Class EPCIS.intersystems.client.LocalServiceSoap Extends %SOAP.WebClient [ ProcedureBlock ]
{

Method Capture(pDocument As EPCIS.intersystems.client.ns2.EPCISDocumentType) As %xsd.base64Binary [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 do ..%AddEnvelopeNamespace("http://epcis.gs1uk.org/nhs/","nhs")
 Quit ..WebMethod("Capture").Invoke($this,"http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader/EPCIS.LocalService.Capture",.pDocument)
}

/*
Method EventQuery(QueryParams As %ListOfObjects(ELEMENTTYPE="Test.Client.ns4.QueryParam",XMLITEMNAME="QueryParam",XMLNAME="QueryParams",REQUIRED=1)) As %ListOfObjects(ELEMENTTYPE="Test.Client.s0.RegisteredObject",XMLITEMNAME="RegisteredObject",XMLNAME="EventQueryResult")
*/
Method EventQuery(pQueryParams As %ListOfObjects(ELEMENTTYPE="EPCIS.epcisq.QueryParam",XMLITEMNAME="QueryParam",XMLNAME="QueryParams",REQUIRED=1)) As %ListOfObjects(ELEMENTTYPE="EPCIS.intersystems.client.ns2.EPCISDocumentType",XMLITEMNAME="Document",XMLNAME="EventQueryResult") [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
 Quit ..WebMethod("EventQuery").Invoke($this,"http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader/EPCIS.LocalService.EventQuery",.pQueryParams)
}

/// This is the URL used to access the web service.
Parameter LOCATION = "http://localhost:52773/csp/user/EPCIS.LocalService.cls";

/// This is the namespace used by the Service
Parameter NAMESPACE = "http://www.unece.org/cefact/namespaces/StandardBusinessDocumentHeader";

/// Use xsi:type attribute for literal types.
Parameter OUTPUTTYPEATTRIBUTE = 1;

/// Determines handling of Security header.
Parameter SECURITYIN = "ALLOW";

/// This is the name of the Service
Parameter SERVICENAME = "LocalService";

/// This is the SOAP version supported by the service.
Parameter SOAPVERSION = 1.1;

}
