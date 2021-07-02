Class EPCIS.intersystems.HL7toObjectEventType Extends Ens.DataTransformDTL [ DependsOn = (EnsLib.HL7.Message, EPCIS.epcis.ObjectEventType) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

/*
 <nhs:inpatientSpellId>3555480</nhs:inpatientSpellId>
        <nhs:inpatientWardStayId>5666770</nhs:inpatientWardStayId>
        <!-- patients not identified by their own GSRN use defaut NHS GSRN for "no id" (urn:epc:id:gsrn:5050898.9999999999), as indicated above,
          augmented by PAS Number in an nhs extension, as follows, with syntax corresponding to AI(91) as specified in
          GS1 UK doc . . . 
          -->
          <nhs:PASnumber>F65432150552084</nhs:PASnumber>
          
          NB:  PAS F654321 LOC 50552084
          
*/
XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.HL7.Message' targetClass='EPCIS.epcis.ObjectEventType' sourceDocType='2.4:ADT_A01' create='new' language='objectscript' >
<assign value='$piece($piece(source.{PV2:1},"."),":",5)' property='gln' action='set' />
<assign value='$extract($piece($piece(source.{PV2:1},"."),":",5),1,8)' property='gsrn' action='set' />
<assign value='##class(Ens.Util.Time).ConvertDateTime(source.{EVN:RecordedDateTime},"%q","%Q")' property='target.recordTime' action='set' />
<assign value='##class(Ens.Util.Time).ConvertDateTime(source.{EVN:EventOccurred},"%q","%Q")' property='target.eventTime' action='set' />
<if condition='target.eventTime=""' >
<true>
<assign value='##class(Ens.Util.Time).ConvertDateTime(source.{MSH:DateTimeOfMessage},"%q","%Q")' property='target.eventTime' action='set' />
</true>
</if>
<assign value='"OBSERVE"' property='target.action' action='set' />
<assign value='"urn:epcglobal:cbv:bizstep:"_$case(source.{MSH:9.2},"A01":"accepting","A02":"arriving","A03":"departing")' property='target.bizStep' action='set' />
<foreach property='source.{PID:3()}' key='k1' >
<if condition='source.{PID:3(k1).5}="NHS"' >
<true>
<assign value='##class(EPCIS.epcglobal.EPC).%New()' property='obj1' action='set' />
<assign value='"urn:epc:id:gsrn:"_"5050898"_"."_source.{PID:3(k1).1}' property='obj1.content' action='set' />
<assign value='obj1.XMLExportToString(.str)' property='tSC' action='set' />
<assign value='target.epcList.Insert($piece($piece(str,"&gt;",2),"&lt;"))' property='tSC' action='set' />
</true>
</if>
<if condition='source.{PID:3(k1).5}="PAS"' >
<true>
<assign value='source.{PID:3(k1).1}_gsrn' property='PASnumber' action='set' />
</true>
</if>
</foreach>
<if condition='target.epcList.Count()=0' >
<true>
<assign value='##class(EPCIS.epcglobal.EPC).%New()' property='obj1' action='set' />
<assign value='"urn:epc:id:gsrn:"_"5050898"_"."_"9999999999"' property='obj1.content' action='set' />
<assign value='obj1.XMLExportToString(.str)' property='tSC' action='set' />
<assign value='target.epcList.Insert($piece($piece(str,"&gt;",2),"&lt;"))' property='tSC' action='set' />
</true>
</if>
<if condition='source.{MSH:MessageType.triggerevent}="A01"' >
<true>
<assign value='##class(EPCIS.epcis.ReadPointType).%New()' property='obj3' action='set' />
<assign value='$piece($piece(source.{PV2:1},"."),"0000")' property='obj3.id' action='set' />
<assign value='obj3' property='target.readPoint' action='set' />
</true>
</if>
<if condition='source.{MSH:MessageType.triggerevent}="A02"' >
<true>
<assign value='##class(EPCIS.epcis.ReadPointType).%New()' property='obj4' action='set' />
<assign value='$piece(source.{PV2:1},"0000")' property='obj4.id' action='set' />
<assign value='obj4' property='target.readPoint' action='set' />
</true>
</if>
<if condition='source.{MSH:MessageType.triggerevent}="A03"' >
<true>
<assign value='##class(EPCIS.epcis.ReadPointType).%New()' property='obj5' action='set' />
<assign value='$piece(source.{PV2:1},"0000")' property='obj5.id' action='set' />
<assign value='obj5' property='target.readPoint' action='set' />
</true>
</if>
<if condition='source.{MSH:MessageType.triggerevent}&apos;="A03"' >
<true>
<assign value='"urn:epcglobal:cbv:bt:in_progress"' property='target.disposition' action='set' />
</true>
</if>
<assign value='##class(EPCIS.epcis.BusinessLocationType).%New()' property='obj6' action='set' />
<assign value='$piece(source.{PV2:1},"00003")' property='obj6.id' action='set' />
<assign value='obj6' property='target.bizLocation' action='set' />
<assign value='##class(EPCIS.epcis.ObjectEventExtensionType).%New()' property='ext1' action='set' />
<assign value='##class(EPCIS.epcis.SourceDestType).%New()' property='dest1' action='set' />
<assign value='"urn:epc:id:sgln:"_"specialtyCode"' property='dest1.content' action='set' />
<assign value='"urn:epcglobal:cbv:sdt:owning_party"' property='dest1.type' action='set' />
<assign value='ext1.destinationList.Insert(dest1)' property='tSC' action='set' />
<assign value='##class(EPCIS.epcis.SourceDestType).%New()' property='dest2' action='set' />
<assign value='"urn:epc:id:sgln:"_"consultantCode"' property='dest2.content' action='set' />
<assign value='"urn:epcglobal:cbv:sdt:possessing_party"' property='dest2.type' action='set' />
<assign value='ext1.destinationList.Insert(dest2)' property='tSC' action='set' />
<assign value='ext1' property='target.extension' action='set' />
<assign value='target.any.Insert("&lt;nhs:inpatientSpellId&gt;"_source.{PV1:19.1}_"&lt;/nhs:inpatientSpellId&gt;")' property='tSC' action='set' />
<if condition='source.{PV1:50.1}' >
<true>
<assign value='target.any.Insert("&lt;nhs:inpatientWardStayId&gt;"_source.{PV1:50.1}_"&lt;/nhs:inpatientWardStayId&gt;")' property='tSC' action='set' />
</true>
</if>
<assign value='target.any.Insert("&lt;nhs:PASnumber&gt;"_PASnumber_"&lt;/nhs:PASnumber&gt;")' property='tSC' action='set' />
</transform>
}

}
