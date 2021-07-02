Class EPCIS.intersystems.LocatorService Extends %CSP.REST
{

/// 
/// The UrlMap determines how a Url should map to a HTTP Method and a Target ClassMethod
/// indicated by the 'Call' attribute. The call attribute is either the name of a method
/// or the name of a class and method seperated by a ':'. Parameters within the URL preceded
/// by a ':' will be extracted from the supplied URL and passed as arguments to the named method.
/// 
/// In this Route Entry GET requests to /class/namespace/classname will call the GetClass method
/// 
/// <Route Url="/class/:namespace/:classname" Method="GET" Call="GetClass"/>
/// 
/// To influence CORS processing you can set the "Cors" attribute to "true", default is "false".
/// The "Cors" attribute is only considered if the PARAMETER 'HandleCorsRequest' is left unspecified.
/// 
/// <Route Url="/class/:namespace/:classname" Method="GET" Call="GetClass" Cors="true"/>
/// 
/// Use a Map Entry to forward ALL requests made to a particular URL prefix. For example. If your 
/// web application has a base url route of /api/v1 and you want to map all requests to 
/// /api/v1/docserver (including all sub-urls) enter a Map entry like this:
/// 
/// <Map Prefix="/docserver" Forward="%Api.v1.DocServer"/>
/// 
/// This will result in calls such as /api/v1/docserver/class/Samples/Sample.Person being redirected
/// to the class %API.v1.DocServer ( another subclass of %CSP.REST )for futher processing. 
XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
<!--
<Route Url="/class/:namespace/:classname" Method="GET" Call="GetClass" Cors="true"/>
<Map Prefix="/docserver" Forward="%Api.v1.DocServer"/>
-->
<Route Url="/gln/:ownGln/associations" Method="GET" Call="GetByGLN"/>
<Route Url="/function/:functionCode" Method="GET" Call="GetByCode"/>

</Routes>
}

/*
GET https://see-ehr-uat.plymouth.nhs.uk:460/api/gln/5055238905202/associations 
{
              ownGln: 5055238905202,
              friendlyDescriptionPurpose: 'Bickleigh Ward pharmacy collection slot'
              tags: [],
              associations: [
                             {
                                           ownGln: 5055238905240,
                                           friendlyDescriptionPurpose: 'Bickleigh Ward',
                                           tags: [
                                                          {
                                                                        code: 'WARD',
                                                                        description: 'Ward'
                                                          }
                                           ],
                                           functionCode: 'RK90023',
                                           active: true,
                                           functionalType: true
                             }
              ],
              active: true,
              functionalType: false
}
GET https://see-ehr-uat.plymouth.nhs.uk:460/api/gln/5055238905257/associations 
response:
{
              ownGln: 5055238905257,
              friendlyDescriptionPurpose: 'Pharmacy Fridge 1'
              tags: [
                             {
                                           code: 'PHARMFRIDGE',
                                           description: 'Pharmacy Fridge'
                             }
              ],
              associations: [],
              active: true,
              functionalType: false
}

GET https://see-ehr-uat.plymouth.nhs.uk:460/api/gln/5055208414369/associations 
response:
{
              ownGln: 5055208414369,
              friendlyDescriptionPurpose: 'Store - Pharmacy'
              tags: [
                             {
                                           code: 'PHARMCD',
                                           description: 'Pharmacy Controlled Drugs area'
                             }
              ],
              associations: [],
              active: true,
              functionalType: false
} 

*/
ClassMethod GetByGLN(ownGln As %Integer) As %Status
{
	quit:'$get(ownGln) $$$OK
	set gln=##class(EPCIS.intersystems.GLN).%OpenId(ownGln)
	quit:(gln="") $$$OK
	do gln.%JSONExport()
	quit $$$OK
}

ClassMethod GetByCode(functionCode As %String) As %Status
{
	quit:$get(functionCode)="" $$$OK
	&SQL(select ownGln into :gln from EPCIS_intersystems.GLN where functionCode = :functionCode )
	quit:'$get(gln) $$$OK
	quit ..GetByGLN(gln)
}

}
