Class EPCIS.intersystems.Production Extends Ens.Production
{

/// Override this in your Production class to do setup before the Production starts
ClassMethod OnStart(pTimeStarted As %String) As %Status
{
	Quit $$$OK
}

ClassMethod TestStart() As %Status
{
	Set tSC = ##class(Ens.Director).GetProductionStatus(.tProductionName,.tState)
	If $$$ISERR(tSC) {
		$$$LOGSTATUS(tSC)
		Quit tSC
	}
	If tState=$$$eProductionStateRunning {
		if tProductionName '= $$$CurrentClass {
			w !,"Stop production "_tProductionName_"? [No] "  Read tInput,!  Quit:$Case($ZCVT(tInput,"L"),"yes":0,"y":0,:1) $$$ERROR($$$EnsErrGeneral,"Not stopping Production "_tProductionName)
			w "Stopping production ",tProductionName,!
			Set tSC = ..Stop() Quit:$$$ISERR(tSC) tSC
			Set tState=0
		}
		else { w !,"Already running "_$$$CurrentClass,! }
	}
	If tState'=$$$eProductionStateRunning {
		Set tSC = ..Start()
	}
	Quit tSC
}

XData ProductionDefinition
{
<Production Name="EPCIS.intersystems.Production" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="EPCIS Process" Category="" ClassName="EPCIS.intersystems.Process" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="EPCIS Capture Service" Category="" ClassName="EPCIS.intersystems.Service" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="Target">EPCIS Process</Setting>
  </Item>
  <Item Name="EPCIS Query Service" Category="" ClassName="EPCIS.intersystems.Service" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="Target">EPCIS Local Storage Client</Setting>
  </Item>
  <Item Name="EPCIS Local Storage Client" Category="" ClassName="EPCIS.intersystems.LocalServiceSoap" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
  </Item>
  <Item Name="Dummy Location Operation" Category="" ClassName="EPCIS.intersystems.DummyLocOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="EPCIS HL7 Process" Category="" ClassName="EPCIS.intersystems.HL7toLocationProcess" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="EnsLib.Workflow.Operation" Category="" ClassName="EnsLib.Workflow.Operation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="AutoCreateRole">1</Setting>
  </Item>
  <Item Name="EPCIS Publish Process" Category="" ClassName="EPCIS.intersystems.PublishProcess" PoolSize="1" Enabled="false" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="EPCIS Notify Process" Category="" ClassName="EPCIS.intersystems.NotifyProcess" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="HL7 Test Service" Category="" ClassName="EnsLib.HL7.Service.FileService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="MessageSchemaCategory">2.4</Setting>
    <Setting Target="Host" Name="TargetConfigNames">EPCIS HL7 Process</Setting>
    <Setting Target="Adapter" Name="FilePath">/opt/epcis/hl7msg/in</Setting>
    <Setting Target="Adapter" Name="ArchivePath"></Setting>
    <Setting Target="Adapter" Name="FileSpec">*</Setting>
  </Item>
  <Item Name="EPCIS SubscriberStream Operation" Category="" ClassName="EPCIS.intersystems.SubscriberStreamOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="HTTPPort">52773</Setting>
    <Setting Target="Adapter" Name="HTTPServer">localhost</Setting>
    <Setting Target="Adapter" Name="URL">/epcisuser/stream</Setting>
  </Item>
  <Item Name="EPCIS SubscriberStream Process" Category="" ClassName="EPCIS.intersystems.SubscriberStreamProcess" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="Target">EPCIS SubscriberStream Operation</Setting>
  </Item>
  <Item Name="EPCIS SubscriberStream Service" Category="" ClassName="EPCIS.intersystems.Service" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="Target">EPCIS SubscriberStream Process</Setting>
  </Item>
  <Item Name="EPCIS.intersystems.TrustLocatorOperation" Category="" ClassName="EPCIS.intersystems.PlymouthLocatorOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="HTTPPort">52773</Setting>
    <Setting Target="Adapter" Name="HTTPServer">localhost</Setting>
    <Setting Target="Adapter" Name="URL">/epcisuser/api</Setting>
  </Item>
  <Item Name="EPCIS.intersystems.PasQueryOperation" Category="" ClassName="EPCIS.intersystems.PasQueryOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="App Query Process" Category="" ClassName="EPCIS.intersystems.AppQueryProcess" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="Location">EPCIS.intersystems.TrustLocatorOperation</Setting>
    <Setting Target="Host" Name="PAS">EPCIS.intersystems.PasQueryOperation</Setting>
    <Setting Target="Host" Name="Repository">EPCIS Local Storage Client</Setting>
  </Item>
  <Item Name="App Query Service" Category="" ClassName="EPCIS.intersystems.Service" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="Target">App Query Process</Setting>
  </Item>
  <Item Name="LocationRestService" Category="" ClassName="EnsLib.REST.GenericService" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="TargetConfigName">LocationRestOperation</Setting>
  </Item>
  <Item Name="LocationRestOperation" Category="" ClassName="EnsLib.REST.GenericOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="HTTPPort">52773</Setting>
    <Setting Target="Adapter" Name="HTTPServer">localhost</Setting>
    <Setting Target="Adapter" Name="URL">|</Setting>
    <Setting Target="Host" Name="ArchiveIO">1</Setting>
  </Item>
  <Item Name="Dummy Location Operation2" Category="" ClassName="EPCIS.intersystems.DummyLocOperation2" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
