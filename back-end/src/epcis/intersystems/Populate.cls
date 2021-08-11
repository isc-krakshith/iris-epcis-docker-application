Class EPCIS.intersystems.Populate
{

ClassMethod Populate() As %Status
{
	for i=1:1:5 {
		do ..DemoGenerateData()
	}
	quit $$$OK
}

ClassMethod DemoGenerateData() As %Status
{
	set tSC=$$$OK
	for i=1:1:9 {
	set tP=$increment(^DEMODATA)
	
	set tDT=$zstrip($ZD($H-10+i,8),"*P")
	set MSH="MSH|^~\&|PAS|RK9|LSP|RK9|"_tDT_"105725|BRIDGER2|ADT^A01|987654321|P|2.4|||"
	set EVN="EVN||"_tDT_"105725||||"_tDT_"0500"
	set PID="PID|1||F20105"_tP_"^^^^PAS~"_(1111111111*tP)_"^^^^NHS||Briggs^Joe^^^MR||20000115|M|||5344 test St , Brest Rd, Plymouth^^^^PL6 5YE^NSP^HOME^^QD4||01752 444444^PHONE||NSP^Not Specified|S|7B|||||L|270|NSP||8||||N||PD1|||Abernethy House,70 Silver Street,Enfield,Middlesex,EN1 3EP^GPPRC^F85029^^^^^5558|G3346563^Yeo^ER^^^DR^^^^^6015||"
	set PV1="PV1|1|I|RK95034^^68^Derriford Hospital\T\RK950\T\HOSPT^^WARD^^^Monkswell Ward, Zone E, Level 10|2|||||5197018^Hussain^S A^^^DR^^413^^^175195|370||||1||||01|457327"_tP_"|||||1|||||||||||||||86|||||"_tDT_"050000|||||test|488274"_tP_"^394333"_tP_"^1168896"_tP
	set tPath=##class(Ens.Director).GetAdapterSettingValue("HL7 Test Service","FilePath")
	set tFile=##class(%File).%New(tPath_"\test"_tP_".hl7")
	do tFile.Open("WSN")
	set tSC=tFile.WriteLine(MSH_$c(13,10)_EVN_$c(13,10)_PID_$c(13,10)_PV1)
	do ..DemoLinkDocument()
	do ..DemoDispense()
	do ..DemoDispense("departing")
	if ^DEMODATA=9 kill ^DEMODATA
	}
	quit tSC
}

ClassMethod DemoLinkDocument() As %Status
{
	set tSC=$$$OK
	
	Set tSC=##class(Ens.Director).CreateBusinessService("EPCIS Capture Service",.tService) 
  	If ($$$ISERR(tSC)) Quit tSC
  	set tRequest=##class(EPCIS.intersystems.DocumentRequest).%New()
  	set tDoc=##class(EPCIS.epcis.EPCISDocumentType).%New()
  	set tDoc.creationDate=$zd($H-10+^DEMODATA,3)
  	set tDoc.schemaVersion=1.2
  	set tBody=##class(EPCIS.epcis.EPCISBodyType).%New()
  	set tTransaction=##class(EPCIS.epcis.TransactionEventType).%New()
  	set tTransaction.eventTime=$zd($H-10+^DEMODATA,3)_" 09:12:00"
  	set tBiz=##class(EPCIS.epcis.BusinessTransactionType).%New()
  	set tBiz.content="urn:epc:id:gdti:50552084.0001.0000457327"_^DEMODATA_"001000"
  	do tTransaction.bizTransactionList.Insert(tBiz)
  	do tTransaction.epcList.Insert("urn:epc:id:gsrn:50552084.0070101052")
  	set tTransaction.action="ADD"
  	set tTransaction.bizStep="http://epcis.gs1uk.org/nhs/bizstep/summarising_discharge"
  	set tReadPoint=##class(EPCIS.epcis.ReadPointType).%New()
  	set tReadPoint.id="urn:epc:id:sgln:50552389.05340.0"
  	set tBizLocation=##class(EPCIS.epcis.BusinessLocationType).%New()
  	set tBizLocation.id="urn:epc:id:sgln:50552389.05340.0"
  	set tTransaction.readPoint=tReadPoint
  	set tTransaction.bizLocation=tBizLocation
	set tAny="<nhs:PASnumber>F10105250552084</nhs:PASnumber><nhs:inpatientSpellId>"_"457327"_^DEMODATA_"</nhs:inpatientSpellId>" 
	do tTransaction.any.Insert(tAny)
	do tBody.EventList.TransactionEvent.Insert(tTransaction) 	
	set tDoc.EPCISBody=tBody
	set tRequest.EPCISDocument=tDoc
	
  	// Call the ProcessInput method of the business service 
  	Set tSC=tService.ProcessInput(tRequest,.output) 
  	do ##class(%DeepSee.Utils).%BuildCube("MedicinesTracking",1,1)

  	If ($$$ISERR(tSC)) Quit tSC
  	#dim output As Ens.Response
  	if $isobject(output) {
	  	write output.%Id()
  	}
	quit tSC
}

ClassMethod DemoDispense(type As %String = "arriving") As %Status
{
	set tSC=$$$OK
	quit:((type="departing")&&(^DEMODATA=5))
	Set tSC=##class(Ens.Director).CreateBusinessService("EPCIS Capture Service",.tService) 
  	If ($$$ISERR(tSC)) Quit tSC
  	set tRequest=##class(EPCIS.intersystems.DocumentRequest).%New()
  	set tDoc=##class(EPCIS.epcis.EPCISDocumentType).%New()
  	set tDoc.creationDate=$zd($H-10+^DEMODATA,3)
  	set tDoc.schemaVersion=1.2
  	set tBody=##class(EPCIS.epcis.EPCISBodyType).%New()
  	set tObject=##class(EPCIS.epcis.ObjectEventType).%New()
  	set tObject.eventTime=$zd($H-10+^DEMODATA,3)_" 09:12:00"
  	set tExt=##class(EPCIS.epcis.ObjectEventExtensionType).%New()
  	set tDest=##class(EPCIS.epcis.SourceDestType).%New()
  	set tDest.content="urn:epc:id:sgln:50552389.05340.0"
  	set tDest.type="urn:epcglobal:cbv:sdt:location"
  	set tObject.extension=tExt
  	do tObject.extension.destinationList.Insert(tDest)
  	if type="departing" set num=$get(^COUNT)
  	if type="arriving" set num=3
  	set count=($random(num)+1)
  	if type="arriving" set ^COUNT=count
  	for i=1:1:count {
  	do tObject.epcList.Insert("urn:epc:id:sscc:5520841.0"_^DEMODATA_"2345610"_^DEMODATA)
  	}
  	set tObject.action="OBSERVE"
  	set tObject.bizStep="urn:epcglobal:cbv:bizstep:"_type
  	set tReadPoint=##class(EPCIS.epcis.ReadPointType).%New()
  	set tReadPoint.id="urn:epc:id:sgln:50552389.0520.0"
  	set tBizLocation=##class(EPCIS.epcis.BusinessLocationType).%New()
  	set tBizLocation.id="urn:epc:id:sgln:50552389.0520.0"
  	set tObject.readPoint=tReadPoint
  	set tObject.bizLocation=tBizLocation
	set tAny="<nhs:inpatientSpellId>"_"457327"_^DEMODATA_"</nhs:inpatientSpellId>" 
	do tObject.any.Insert(tAny)
	do tBody.EventList.ObjectEvent.Insert(tObject) 	
	set tDoc.EPCISBody=tBody
	set tRequest.EPCISDocument=tDoc
	
  	// Call the ProcessInput method of the business service 
  	Set tSC=tService.ProcessInput(tRequest,.output) 
  	do ##class(%DeepSee.Utils).%BuildCube("MedicinesTracking",1,1)

  	If ($$$ISERR(tSC)) Quit tSC
  	#dim output As Ens.Response
  	if $isobject(output) {
	  	write output.%Id()
  	}
	quit tSC
}

}
