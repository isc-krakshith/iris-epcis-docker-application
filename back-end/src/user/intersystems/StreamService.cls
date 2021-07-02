Class EPCIS.intersystems.StreamService Extends %CSP.REST
{

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
      <Route Url="/stream" Method="GET" Call="stream"/>
   </Routes>
}

ClassMethod stream() As %Status [ WebMethod ]
{

	set tSC=$$$OK
	
	set tStream=##class(%Stream.GlobalCharacter).%New()
	do tStream.Write("<Stream>")
	set start=1

	set bc=$bitcount(%request.Data("list",1))
	if bc {
	
		set end=bc
		set tBits=%request.Data("list",1)
	for i=start:1:end {
		if $bit(tBits,i) {
			set tDoc=##class(EPCIS.epcis.EPCISDocumentType).%OpenId(i)
			do tDoc.XMLExportToString(.tString)
			do tStream.Write(tString)
		}
	}
	}
	do tStream.Write("</Stream>")
	do tStream.Rewind()
	do tStream.OutputToDevice()
	Return tSC
}

}
