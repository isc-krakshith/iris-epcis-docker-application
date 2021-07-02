Include HL7v2Driver.HL7.EPCIS

/// <b>EPCIS.testing.HL7v2Create</b> <br>
/// 
/// Class to generate ADT and/or ORU messages and send them out to a specified port
/// or ports<br/><br/>
/// Error and status information are written to the ^HL7Driver global
Class EPCIS.testing.HL7v2Create Extends %RegisteredObject
{

ClassMethod TCPClient(pType As %String = "ADT_A01", pCount As %String = 0, pHang As %String = ".1", pIP As %String = "127.0.0.1", pPort As %Integer = 47001, pAck As %Boolean = 0, pForeground As %Boolean = 1, pMode As %String = "S", pTerminators As %Binary = {$Char(28)}) As %Status [ ProcedureBlock = 0 ]
{
	If (pForeground = 0) Job Start:(:1)
	Else  Do Start
	
	Quit $$$OK
	
Start
	Set $ZTrap		= "TCPClientET"
	Set tStatus		= ##class(EPCIS.testing.HL7v2Create).SetInterfaceInfo(pIP, pPort, pType, pHang)
	Set tTCPDevice	= "|TCP|" _ pPort
	Set tAckTimeout	= 5

	Open tTCPDevice:(pIP:pPort:pMode:pTerminators:32767:32767):3
	If '$Test { ZTrap "TCP" } Else { Use tTCPDevice }

	If ($ZConvert($Extract(pCount, 1, 2), "U") = "$R") { Set @("tNumMessages=" _ pCount), tNumMessages = +tNumMessages } Else { Set tNumMessages = +pCount }

	For tCount = 1:1:tNumMessages {
		If '$Data(^HL7Driver.Status("HL7v2", pIP, pPort)) Quit
		
		Set tTotalCount		= $Increment(^HL7Driver.Status("HL7v2", pIP, pPort))
		Set tMessageType	= $Case($ZConvert(pType, "U"), "MIXED":$Case($Random(3), 0:"ADTA01", 1:"ORUR01", :"DFTP03"), :$Translate($ZConvert(pType, "U"), "^_", ""))
		Set tMessage		= $Case(tMessageType, "ORUR01S":##class(EPCIS.testing.HL7v2Create).GenerateORUR01S(5,1000),"ADTA01":##class(EPCIS.testing.HL7v2Create).GenerateADTA01(), "ORUR01":##class(EPCIS.testing.HL7v2Create).GenerateORUR01(), "DFTP03":##class(EPCIS.testing.HL7v2Create).GenerateDFTP03(), :"")
		If "ORUR01S"'=tMessageType {
			Write tMessage, *-3
		} Else {
			;write Stream to device
			Do tMessage.OutputToDevice()
			Write *-3
		}
		If (pAck = 1) {
			Read tAckResponse:tAckTimeout
		
			If ($Test = 1) Set tTotalAckCount = $Increment(^HL7Driver.Status("HL7v2", pIP, pPort, "Ack"))
		}
		
		If ($ZConvert($Extract(pHang, 1, 2), "U") = "$R") { Set @("tHangTime=" _ pHang), tHangTime = +tHangTime } Else { Set tHangTime = +pHang }
		Hang tHangTime
	}	

	Set tStatus = ##class(EPCIS.testing.HL7v2Create).ClearInterfaceInfo(pIP, pPort)

	// Give interface engine a chance to finish reading from TCP buffer before closing
	Hang 5

	Close tTCPDevice

	Quit

TCPClientET
	Set $ZTrap = ""
	
	Close tTCPDevice
	
	Set tStatus = ##class(EPCIS.testing.HL7v2Create).ClearInterfaceInfo(pIP, pPort)
	
	Set tID = $Increment(^HL7Driver.Errors)
	Set ^HL7Driver.Errors(tID) = $ZDateTime($Horolog, 3) _ "|" _ $ZError

	Quit
}

ClassMethod SetInterfaceInfo(pIP As %String = "", pPort As %Integer = "", pType As %String = "", pHang As %String = "") As %Status
{
	Set $ZTrap = "SetInterfaceInfoET"
	
	If (pIP = "") || (pPort = "") Quit $$$ERROR($$$GeneralError,"Null IP or port encountered...")

	Set ^HL7Driver.Status("HL7v2", pIP, pPort, "Info") = $ZDateTime($Horolog, 3) _ "^" _ pType _ "^" _ pHang
	
	Quit $$$OK

SetInterfaceInfoET
	Set $ZTrap = ""
	
	Quit $$$ERROR($$$GeneralError,"An error has occurred in SetInterfaceInfo():  " _ $ZError)
}

ClassMethod ClearInterfaceInfo(pIP As %String = "", pPort As %Integer = "") As %Status
{
	Set $ZTrap = "ClearInterfaceInfoET"
	
	If (pIP = "") || (pPort = "") Quit $$$ERROR($$$GeneralError,"Null IP or port encountered...")

	Kill ^HL7Driver.Status("HL7v2", pIP, pPort)
	
	Quit $$$OK

ClearInterfaceInfoET
	Set $ZTrap = ""
	
	Quit $$$ERROR($$$GeneralError,"An error has occurred in ClearInterfaceInfo():  " _ $ZError)
}

ClassMethod ClearAllInterfaceInfo() As %Status
{
	Set $ZTrap = "ClearAllInterfaceInfoET"
	
	Kill ^HL7Driver.Status("HL7v2")
	
	Quit $$$OK

ClearAllInterfaceInfoET
	Set $ZTrap = ""
	
	Quit $$$ERROR($$$GeneralError,"An error has occurred in ClearAllInterfaceInfo():  " _ $ZError)
}

ClassMethod GenerateADT(type As %String = "A01") As %String
{
	Set $ZTrap = "GenerateADTA01ET"

	Set tMessage = $Char(11)
	
	// MSH
	Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateMSH("ADT_"_type)
	If (tSegment = "") { ZTrap "MSH" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }
	
	// EVN
	Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateEVN("A01")
	If (tSegment = "") { ZTrap "EVN" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }

	// PID
	Set tSegment = ##class(EPCIS.testing.HL7v2Create).GeneratePID()
	If (tSegment = "") { ZTrap "PID" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }

	// NK1
	For tIterator = 1:1:$Random(3) {
		Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateNK1(tIterator)
		If (tSegment = "") { ZTrap "NK1" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }
	}
	
	// PV1
	Set tSegment = ##class(EPCIS.testing.HL7v2Create).GeneratePV1()
	If (tSegment = "") { ZTrap "PV1" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }

	// OBX
	For tIterator = 1:1:$Random(5) {
		Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateOBX(tIterator)
		If (tSegment = "") { ZTrap "OBX" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }
	}

	Set tMessage = tMessage _ $Char(28, 13)
	
	Quit tMessage

GenerateADTA01ET
	Set $ZTrap = ""
	
	Quit "An error has occurred in GenerateADTA01():  " _ $ZError
}

ClassMethod GenerateORUR01() As %String
{
	Set $ZTrap = "GenerateORUR01ET"

	Set tMessage = $Char(11)
	
	// MSH
	Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateMSH("ORU_R01")
	If (tSegment = "") { ZTrap "MSH" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }
	
	// PID
	Set tSegment = ##class(EPCIS.testing.HL7v2Create).GeneratePID()
	If (tSegment = "") { ZTrap "PID" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }

	// NK1
	For tIterator = 1:1:$Random(4) {
		Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateNK1(tIterator)
		If (tSegment = "") { ZTrap "NK1" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }
	}
	
	// PV1
	Set tSegment = ##class(EPCIS.testing.HL7v2Create).GeneratePV1()
	If (tSegment = "") { ZTrap "PV1" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }

	// ORC
	Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateORC()
	If (tSegment = "") { ZTrap "ORC" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }

	// OBR
	For tIterator1 = 1:1:$Random(2) + 1 {
		Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateOBR(tIterator1)
		If (tSegment = "") { ZTrap "OBR" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }
		
		// OBX
		For tIterator2 = 1:1:$Random(10) + 1 {
			Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateOBX(tIterator2)
			If (tSegment = "") { ZTrap "OBX" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }
		}
	}

	Set tMessage = tMessage _ $Char(28, 13)
	
	Quit tMessage

GenerateORUR01ET
	Set $ZTrap = ""
	
	Quit "An error has occurred in GenerateORUR01():  " _ $ZError
}

ClassMethod GenerateDFTP03() As %String
{
	Set $ZTrap = "GenerateDFTP03ET"

	Set tMessage = $Char(11)
	
	// MSH
	Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateMSH("DFT_P03")
	If (tSegment = "") { ZTrap "MSH" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }
	
	// EVN
	Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateEVN("P03")
	If (tSegment = "") { ZTrap "EVN" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }

	// PID
	Set tSegment = ##class(EPCIS.testing.HL7v2Create).GeneratePID()
	If (tSegment = "") { ZTrap "PID" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }

	// FT1
	For tIterator = 1:1:$Random(3) + 1 {
		Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateFT1(tIterator)
		If (tSegment = "") { ZTrap "FT1" } Else { Set tMessage = tMessage _ tSegment _ $Char(13) }
	}

	Set tMessage = tMessage _ $Char(28, 13)
	
	Quit tMessage

GenerateDFTP03ET
	Set $ZTrap = ""
	
	Quit "An error has occurred in GenerateDFTP03():  " _ $ZError
}

ClassMethod GenerateMSH(pType As %String = "") As %String
{
	Set $ZTrap = "GenerateMSHET"

	Quit "MSH|^~\&|" _ $$$Application _ "|" _ $$$Facility _ "|" _ $$$Application _ "|" _ $$$Facility _ "|" _ $$$CurrentDate_$$$CurrentTime _ "||" _ $$$MessageType(pType) _ "|" _ $$$MessageControlID _ "|T|2.3.1|||AL|"

GenerateMSHET
	Set $ZTrap = ""
	b
	Quit ""
}

ClassMethod GenerateEVN(pEventType As %String = "") As %String
{
	Set $ZTrap = "GenerateEVNET"

	Quit "EVN|" _ pEventType _ "|" _ $$$Date _ "|" _ $$$Date _ "|"

GenerateEVNET
	Set $ZTrap = ""
	
	Quit ""
}

ClassMethod GeneratePID() As %String
{
	Set $ZTrap = "GeneratePIDET"

	Quit "PID|" _ $$$Integer _ "||" _ $$$PatientIDList _ "||" _ $$$Name _ "||" _ $$$Date _ "|" _ $$$Sex _ "||" _ "" _ "|" _ $$$Address _ "||" _ $$$Phone _ "||||||"_##class(%Library.PopulateUtils).SSN()_"|"

GeneratePIDET
	Set $ZTrap = ""
	
	Quit ""
}

ClassMethod GenerateNK1(pIterator As %Integer = 1) As %String
{
	Set $ZTrap = "GenerateNK1ET"

	Quit "NK1|" _ pIterator _ "|" _ $$$Name _ "|" _ $$$NKRelationship _ "|" _ $$$Address _ "||" _ $$$Phone _ "|"

GenerateNK1ET
	Set $ZTrap = ""
	
	Quit ""
}

ClassMethod GeneratePV1() As %String
{
	Set $ZTrap = "GeneratePV1ET"
	
	Quit "PV1|1|" _ $$$PatientClass _ "|" _ $$$PatientLocation _ "||||||"_$$$Consultant_"|SUR||-||ADM|A0-||||"_$increment(^EPISODE)_"|"

GeneratePV1ET
	Set $ZTrap = ""
	
	Quit ""
}

ClassMethod GenerateORC(pIterator As %Integer = 1) As %String
{
	Set $ZTrap = "GenerateORCET"

	Quit "ORC|CN|||||||||||" _ $$$Name _ "|||||||||" _ $$$Facility _ "|" _ $$$Address _ "|" _ $$$Phone _ "|" _ $$$Address _ "|"

GenerateORCET
	Set $ZTrap = ""
	
	Quit ""
}

ClassMethod GenerateOBR(pIterator As %Integer = 1) As %String
{
	Set $ZTrap = "GenerateOBRET"

	Quit "OBR|" _ pIterator _ "|||" _ $$$UniversalServiceID _ "|||" _ $$$Date _ "|"

GenerateOBRET
	Set $ZTrap = ""
	
	Quit ""
}

ClassMethod GenerateOBX(pIterator As %Integer = 1) As %String
{
	Set $ZTrap = "GenerateOBXET"

	Quit "OBX|" _ pIterator _ "||" _ $$$ObservationID _ "|1|"_ $$$ObservationValue _ "|" _ $$$Units _ "|" _ $$$ReferencesRange _ "|"

GenerateOBXET
	Set $ZTrap = ""
	
	Quit ""
}

ClassMethod GenerateFT1(pIterator As %Integer = 1) As %String
{
	Set $ZTrap = "GenerateFT1ET"

	Quit "FT1|" _ pIterator _ "|||" _ $$$Date _ "||" _ $$$TransactionType _ "|99201^OFFICE/OP VISIT, NEW PT, 3 KEY|||" _ $$$SmallInteger _ "||" _ $$$Float _ "|||||||493 1^ASTHMA~378.08^ALT ESOTROP W X/Y PATTRN|1^Green^Bill^A"

GenerateFT1ET
	Set $ZTrap = ""
	
	Quit ""
}

ClassMethod GenerateORUR01S(pNOBR As %Integer = 3, pNOBX As %Integer = 10) As %Stream.GlobalCharacter
{
	Set $ZTrap = "GenerateORUR01SET"

	Set tMessage = ##class(%Stream.GlobalCharacter).%New()
	Do tMessage.Write($Char(11))
	
	// MSH
	Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateMSH("ORU_R01")
	If (tSegment = "") { ZTrap "MSH" } Else { Do tMessage.Write(tSegment _ $Char(13)) }
	
	// PID
	Set tSegment = ##class(EPCIS.testing.HL7v2Create).GeneratePID()
	If (tSegment = "") { ZTrap "PID" } Else { Do tMessage.Write(tSegment _ $Char(13)) }

	// NK1
	For tIterator = 1:1:$Random(4) {
		Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateNK1(tIterator)
		If (tSegment = "") { ZTrap "NK1" } Else { Do tMessage.Write(tSegment _ $Char(13)) }
	}
	
	// PV1
	Set tSegment = ##class(EPCIS.testing.HL7v2Create).GeneratePV1()
	If (tSegment = "") { ZTrap "PV1" } Else { Do tMessage.Write(tSegment _ $Char(13)) }

	// ORC
	Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateORC()
	If (tSegment = "") { ZTrap "ORC" } Else { Do tMessage.Write(tSegment _ $Char(13)) }

	// OBR
	For tIterator1 = 1:1:pNOBR {
		Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateOBR(tIterator1)
		If (tSegment = "") { ZTrap "OBR" } Else { Do tMessage.Write(tSegment _ $Char(13)) }
		
		// OBX
		For tIterator2 = 1:1:pNOBX {
			Set tSegment = ##class(EPCIS.testing.HL7v2Create).GenerateOBX(tIterator2)
			If (tSegment = "") { ZTrap "OBX" } Else { Do tMessage.Write(tSegment _ $Char(13)) }
		}
	}

	Do tMessage.Write($Char(28, 13))
	Do tMessage.Rewind()
	Quit tMessage

GenerateORUR01SET
	Set $ZTrap = ""
	
	Quit "An error has occurred in GenerateORUR01S():  " _ $ZError
}

}
