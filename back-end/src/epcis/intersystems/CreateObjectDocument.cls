Class EPCIS.intersystems.CreateObjectDocument Extends Ens.DataTransformDTL [ DependsOn = (EPCIS.epcis.ObjectEventType, EPCIS.intersystems.CaptureRequest) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EPCIS.epcis.ObjectEventType' targetClass='EPCIS.intersystems.CaptureRequest' create='new' language='objectscript' >
<assign value='1.1' property='target.pDocument.schemaVersion' action='set' />
<assign value='##class(Ens.Util.Time).ConvertDateTime($h,"%q(3)","%Q")' property='target.pDocument.creationDate' action='set' />
<assign value='source' property='target.pDocument.EPCISBody.EventList.ObjectEvent.(1)' action='set' />
</transform>
}

}
