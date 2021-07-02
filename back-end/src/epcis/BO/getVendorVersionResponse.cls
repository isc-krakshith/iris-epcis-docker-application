Class EPCIS.BO.getVendorVersionResponse Extends Ens.Response [ ProcedureBlock ]
{

Property GetVendorVersionResult As %String;

Storage Default
{
<Data name="getVendorVersionResponseDefaultData">
<Subscript>"getVendorVersionResponse"</Subscript>
<Value name="1">
<Value>GetVendorVersionResult</Value>
</Value>
</Data>
<DefaultData>getVendorVersionResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
