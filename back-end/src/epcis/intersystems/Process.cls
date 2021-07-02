/// 
Class EPCIS.intersystems.Process Extends Ens.BusinessProcessBPL [ ClassType = persistent, ProcedureBlock ]
{

Storage Default
{
<Type>%Storage.Persistent</Type>
}

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='EPCIS.intersystems.DocumentRequest' response='Ens.Response' height='2000' width='2000' >
<context>
<property name='CaptureResponse' type='EPCIS.intersystems.CaptureResponse' instantiate='0' />
<property name='CaptureRequest' type='EPCIS.intersystems.CaptureRequest' instantiate='0' />
</context>
<sequence xend='200' yend='550' >
<call name='Local Storage' target='EPCIS Local Storage Client' async='1' xpos='200' ypos='250' >
<request type='EPCIS.intersystems.CaptureRequest' >
<assign property="callrequest.pDocument" value="request.EPCISDocument" action="set" />
<assign property="context.CaptureRequest" value="callrequest" action="set" />
</request>
<response type='EPCIS.intersystems.CaptureResponse' >
<assign property="context.CaptureResponse" value="callresponse" action="set" />
</response>
</call>
<sync name='Wait for Response' calls='Local Storage' type='all' xpos='200' ypos='350' />
<call name='Publish' target='EPCIS Publish Process' async='1' xpos='200' ypos='450' >
<request type='EPCIS.intersystems.PublishRequest' >
<assign property="callrequest.CaptureRequest" value="context.CaptureRequest" action="set" />
<assign property="callrequest.CaptureResponse" value="context.CaptureResponse" action="set" />
</request>
<response type='Ens.Response' />
</call>
</sequence>
</process>
}

}
