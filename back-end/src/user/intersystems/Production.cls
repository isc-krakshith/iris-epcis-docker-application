Class EPCIS.intersystems.Production Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="EPCIS.intersystems.Production" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="LocalStorageOperation" Category="" ClassName="EPCIS.intersystems.LocalStorageOperation" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="EPCIS Process" Category="" ClassName="EPCIS.intersystems.Process" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="EPCIS Service" Category="" ClassName="EPCIS.intersystems.Service" PoolSize="0" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="Target">EPCIS Process</Setting>
  </Item>
</Production>
}

}
