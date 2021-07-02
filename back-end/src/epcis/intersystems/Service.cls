Class EPCIS.intersystems.Service Extends Ens.BusinessService
{

Property Target As Ens.DataType.ConfigName;

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{
	

	// Make a synchronous call to the business process and use the response message as our response 
	Set tSC = ..SendRequestSync(..Target, pInput, .pOutput) 
	Quit $$$OK
}

Parameter SETTINGS = "Target,GenerateSuperSessionID:Additional,AlertGracePeriod:Alerting";

}
