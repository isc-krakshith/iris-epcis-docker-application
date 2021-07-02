Class EPCIS.intersystems.Request Extends (Ens.Request, %JSON.Adaptor) [ Not ProcedureBlock ]
{

/// This method is called by the Management Portal to 
/// display a message-specific content viewer.<br>
/// This method displays its content by writing out to the current device.
/// The content should match the type returned by the 
/// <method>%GetContentType</method> method.<br>
Method %ShowContents(pZenOutput As %Boolean = 0)
{
	If (..%Extends("%XML.Adaptor")) {
		// show contents as XML
		&html<<?xml version="1.0" ?>
		<?xml-stylesheet href="ensemble/Ensemble_XMLDisplay.xsl" type="text/xsl" ?>
		<!-- type: #($classname())#  id: #(..%Id())# -->
>
		Set tWriter = ##class(%XML.Writer).%New()
		Set tWriter.NoXMLDeclaration = 1
		Set tWriter.Indent = 1
		do tWriter.AddNamespace("http://epcis.gs1uk.org/nhs/","nhs")
		Do tWriter.AddInstanceNamespace()
		Do tWriter.AddSchemaNamespace()
		Do tWriter.RootObject($this)
	}
	Else {
		&html<<div>There is no content viewer defined for this message type.</div>>
	}
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

/// Serialize an XML enabled class as an XML document and write 
/// it to the current device.<p>
/// IMPORTANT: The XMLExport method does not directly support many of the XML parameters. 
/// If you want control of the format of the export, do not use this method. Instead create an instance 
/// of  <class>%XML.Writer</class> and  use its OutputToDevice() method.<p>
///  
/// The supported arguments for XMLExport are: <p>
/// 
/// <var>top</var> is the optional tag to be used for the top-level tag.<p>
/// 
/// <var>format</var> is the parameter formatting type ("literal", "encoded" or "encoded12") to
/// be used for this object.  The default value for <var>format</var> is "" 
/// which currently is the same as the "literal" formatting, but may be a 
/// unique encoding in the future.<p>
/// 
/// **********<br>
/// **********<br>
/// All the following arguments are for internal use only and may change<br>
/// **********<br>
/// **********<br>
/// <var>namespaces</var> is the %XML.Namespaces class instance for this XML document.
/// Instead of <var>namespaces</var> <var>typesPrefix</var> is still supported for compatability and
/// is the optional namespace prefix to be used for all element tags and ObjectScript types.<p>
/// <var>attrs</var> is a multidimensional array of extra attributes for the top node:<br>
/// attrs is number of attributes<br>
/// attrs(i) is name of ith attribute<br>
/// attrs(i,0) is value of the ith attribute<p>
/// 
/// If the <var>createId</var> is not "", then an id field with this id value is created.<p>
/// 
/// If the <var>typeAttr</var> is not "", then add a type attribute to the top element if
/// the this class's name is not typeAttr.<p>
/// 
/// The <var>idlist</var> and <var>oreflist</var> arguments are
/// used internally to track deferred object export and should normally not be specified.<p>
/// 
/// <var>initialIndent</var> is the initial indentation for use when
/// the format is indent.<p>
/// 
/// <var>local</var> specifies if the element is treated as a local element.
/// A global element is specified by a false value of <var>local</var> which can
/// be either 0 to represent a global element in the namespace specified by
/// the <var>namespace</var> argument or a string which is the namespace to which
/// the global element belongs.
/// The default for <var>local</var> is 0.<p>
/// If the class is to be exported as an XOP package for use by SOAP MTOM,
/// <var>mimeAttachments</var> is the MIME part which contains the list of 
/// MIME parts for all the attachments in the XOP package.
Method XMLExport(top As %String, format As %String, namespaces As %XML.Namespaces, attrs, createId As %String, typeAttr As %String, ByRef oreflist, ByRef idlist, initialIndent As %String, local As %Boolean, mimeAttachments As %Net.MIMEPart) As %Status [ ServerOnly = 1 ]
{
	New %xmlwrite,%xmlendwrite,%xmleolwrite,%xmlmsg,xmlimplementation,summaryArg,xmlformat,
		ignoreNull,indentFlag,inlineFlagArg,deepFlag,nocycle,currentIndent,indentChars,initialCR,
		group,encoded,soap12,fmt,sc,id,val,first,len,temp,temp1,usePrefix,attrsPrefix,class,
		topArg,attrsArg,i,xsitype,soapPrefix,schemaPrefix,xsiPrefix,xsiAttrs,
		topPrefix,typesPrefix,tmpi,%xmlBase64NoLineBreaks
	Set $ztrap="XMLExportTrap"
	Set sc=$$$OK

    Set fmt=$zcvt($get(format),"L")
    Set encoded=$case($piece(fmt,",",1),"":0,"literal":0,"encoded":1,"encoded12":1,:"")
    If encoded="" Quit $$$ERROR($$$XMLInvalidFormat,fmt)
    Set soap12=(encoded && ($piece(fmt,",",1)="encoded12"))

	Set class=$zobjclass() 
	Set xmlformat=$$$xmlformat(class)
	If xmlformat="encoded" {
		Set fmt=$zcvt($get(format),"L") If $case($piece(fmt,",",1),"encoded":0,"encoded12":0,:1) Quit $$$ERROR($$$XMLInvalidFormat,fmt)
		Set encoded=1
	} ElseIf xmlformat="literal" {
		Set fmt=$zcvt($get(format),"L") If $case($piece(fmt,",",1),"":0,"literal":0,:1) Quit $$$ERROR($$$XMLInvalidFormat,fmt)
		Set encoded=0
	} Else {
		Set fmt=$zcvt($get(format),"L"),encoded=$case($piece(fmt,",",1),"":0,"literal":0,"encoded":1,"encoded12":1,:"")
		If encoded="" Quit $$$ERROR($$$XMLInvalidFormat,$get(format))
	}

	Set ignoreNull=(fmt["ignorenull")
	Set indentFlag=(fmt["indent")
	Set inlineFlagArg=(fmt["inline")
	Set deepFlag=(fmt'["shallow")
	Set nocycle=(fmt["nocyclecheck")
	Set %xmlBase64NoLineBreaks=(fmt'["base64linebreaks")
	Set group=(fmt["group")
	Set currentIndent=$get(initialIndent)
	If indentFlag {
		Set indentChars=$piece($piece(fmt,"indent(",2),")",1)
		If indentChars="",fmt'["(" Set indentChars="  "
	} Else {
		Set (indentChars,currentIndent)=""
	}
	Set mimeAttachments=$get(mimeAttachments)
	Set summaryArg=(fmt["summary")
	Set namespaces=$get(namespaces)
	Set createId=$get(createId)
	Set topArg=$get(top)
	
	If $isobject(namespaces) {
		do namespaces.AddNamespace("http://epcis.gs1uk.org/nhs/","nhs")
		Do namespaces.GetXMLPrefixes(.soapPrefix, .schemaPrefix, .xsiPrefix, .xsiAttrs)
		Do namespaces.SetStable(0)
	} Else {
		Set soapPrefix="SOAP-ENC:"
		Set schemaPrefix="s:"
		If encoded {
			Set xsiPrefix="xsi:"
			Set xsiAttrs=""
		} Else {
			Set xsiPrefix="d5p1:"
			Set xsiAttrs=" xmlns:d5p1=""http://www.w3.org/2001/XMLSchema-instance"""
		}
	}

	Set attrsArg=""	
 	For i=1:1:$get(attrs) Set attrsArg=attrsArg_" "_attrs(i)_"="""_$zcvt(attrs(i,0),"O","XML")_""""

	Set (topPrefix,typesPrefix,usePrefix,attrsPrefix)=""
	Set sc=..XMLExportInternal()
	
	Quit sc

XMLExportTrap Set $ztrap=""
	Quit $$$ERROR($$$ObjectScriptError,$ze)
}

}
