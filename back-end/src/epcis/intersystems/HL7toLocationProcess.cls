/// 
Class EPCIS.intersystems.HL7toLocationProcess Extends Ens.BusinessProcessBPL
{

Property GetURL As Ens.DataType.ConfigName;

Storage Default
{
<Data name="HL7toLocatorProcessDefaultData">
<Subscript>"HL7toLocatorProcess"</Subscript>
<Value name="1">
<Value>GetURL</Value>
</Value>
</Data>
<DefaultData>HL7toLocatorProcessDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='EnsLib.HL7.Message' response='EnsLib.HL7.Message' height='2150' width='2000' >
<context>
<property name='identifier' type='%String' instantiate='0' >
<parameters>
<parameter name='MAXLEN'  value='250' />
</parameters>
</property>
<property name='objectEventType' type='EPCIS.epcis.ObjectEventType' instantiate='0' />
<property name='CaptureRequest' type='EPCIS.intersystems.CaptureRequest' instantiate='0' />
<property name='CaptureResponse' type='EPCIS.intersystems.CaptureResponse' instantiate='0' />
<property name='HL7' type='EnsLib.HL7.Message' instantiate='0' />
</context>
<sequence xend='200' yend='1500' >
<assign name="Initialise Response" property="response" value="request.%ConstructClone()" action="set" xpos='200' ypos='250' />
<call name='getLocatorCode' target='Dummy Location Operation2' async='0' timeout='30' xpos='200' ypos='350' >
<request type='EPCIS.intersystems.LocatorRequest' >
<assign property="callrequest.GetURL" value="&quot;&quot;" action="set" />
</request>
<response type='HS.Message.FHIR.Response' >
<assign property="context.identifier" value="##class(EPCIS.intersystems.LocatorResponseToFHIR).Transform(callresponse,.tFHIR)" action="set" />
<assign property="context.identifier" value="tFHIR.identifier.GetAt(1).value.value" action="set" />
<assign property="response.{PV2:1.1}" value="&quot;urn:epc:id:sgln:&quot;_$extract(context.identifier,1,8)_&quot;.&quot;_$extract(context.identifier,9,13)_&quot;.0&quot;" action="set" />
</response>
</call>
<sync name='Wait for Locator' calls='getLocatorCode' timeout='30' type='all' xpos='200' ypos='450' />
<transform name='Create ObjectEvent' class='EPCIS.intersystems.HL7toObjectEventType' source='response' target='context.objectEventType' xpos='200' ypos='550' />
<transform name='Create CaptureRequest' class='EPCIS.intersystems.CreateObjectDocument' source='context.objectEventType' target='context.CaptureRequest' xpos='200' ypos='650' />
<call name='Store Document' target='EPCIS Local Storage Client' async='0' xpos='200' ypos='750' >
<request type='EPCIS.intersystems.CaptureRequest' >
<assign property="callrequest" value="context.CaptureRequest" action="set" />
</request>
<response type='EPCIS.intersystems.CaptureResponse' >
<assign property="context.CaptureResponse" value="callresponse" action="set" />
</response>
</call>
<sync name='Wait for Storage' calls='Store Document' timeout='30' type='all' xpos='200' ypos='850' />
<call name='PubSub' target='EPCIS Publish Process' async='1' xpos='200' ypos='950' >
<request type='EPCIS.intersystems.PublishRequest' >
<assign property="callrequest.CaptureRequest" value="context.CaptureRequest" action="set" />
<assign property="callrequest.CaptureResponse" value="context.CaptureResponse" action="set" />
</request>
<response type='Ens.Response' />
</call>
<if name='Depart Prev Locator' condition='request.{MSH:9.2}="A02"' xpos='200' ypos='1050' xend='200' yend='1400' >
<true>
<call name='EPCIS HL7 Process' target='EPCIS HL7 Process' async='0' xpos='335' ypos='1200' >
<request type='EnsLib.HL7.Message' >
<assign property="callrequest" value="response.%ConstructClone()" action="set" />
<assign property="callrequest.{MSH:9.2}" value="&quot;A03&quot;" action="set" />
<assign property="callrequest.{PV1:3}" value="request.{PV1:6}" action="set" />
<assign property="callrequest.{PV1:6}" value="request.{PV1:3}" action="set" />
</request>
<response type='EnsLib.HL7.Message' >
<assign property="context.HL7" value="callresponse" action="set" />
</response>
</call>
<sync name='Wait for HL7' calls='EPCIS HL7 Process' timeout='30' type='all' xpos='335' ypos='1300' />
</true>
</if>
</sequence>
</process>
}

}
