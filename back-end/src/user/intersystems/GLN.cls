Class EPCIS.intersystems.GLN Extends (%Persistent, %XML.Adaptor, %JSON.Adaptor)
{

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
Property ownGln As %Integer;

Property friendlyDescriptionPurpose As %String;

Property tags As array Of %String;

Property associations As list Of GLN;

Property functionCode As %String;

Property active As %Boolean;

Property functionalType As %Boolean;

Index glnIndex On ownGln [ IdKey, PrimaryKey, Unique ];

Index fnCodeIndex On functionCode;

Storage Default
{
<Data name="GLNDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ownGln</Value>
</Value>
<Value name="3">
<Value>friendlyDescriptionPurpose</Value>
</Value>
<Value name="4">
<Value>associations</Value>
</Value>
<Value name="5">
<Value>functionCode</Value>
</Value>
<Value name="6">
<Value>active</Value>
</Value>
<Value name="7">
<Value>functionalType</Value>
</Value>
</Data>
<Data name="tags">
<Attribute>tags</Attribute>
<Structure>subnode</Structure>
<Subscript>"tags"</Subscript>
</Data>
<DataLocation>^EPCIS.intersystems.GLND</DataLocation>
<DefaultData>GLNDefaultData</DefaultData>
<IdLocation>^EPCIS.intersystems.GLND</IdLocation>
<IndexLocation>^EPCIS.intersystems.GLNI</IndexLocation>
<StreamLocation>^EPCIS.intersystems.GLNS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
