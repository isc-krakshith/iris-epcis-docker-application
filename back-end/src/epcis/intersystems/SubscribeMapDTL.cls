Class EPCIS.intersystems.SubscribeMapDTL Extends Ens.DataTransformDTL [ DependsOn = (EPCIS.epcis.EPCISDocumentType, EnsLib.EDI.XML.Document) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EPCIS.epcis.EPCISDocumentType' targetClass='EnsLib.EDI.XML.Document' targetDocType='EPCglobal-epcis-1_2:EPCISDocument' create='new' language='objectscript' >
<assign value='source.EPCISBody.EventList' property='target.{EPCISBody}' action='set' />
</transform>
}

}
