ROUTINE HL7v2Driver.HL7.Macros [Type=INC]
#define Address				$$$AddressStreet _ "^^" _ $$$AddressCity _ "^" _ $$$AddressState _ "^" _ $$$AddressZip _ "^^M^^" _ $$$String(5)
#define AddressCity			##class(%Library.PopulateUtils).City()
#define AddressState		##class(%Library.PopulateUtils).USState()
#define AddressStreet		##class(%Library.PopulateUtils).Street()
#define AddressZip			##class(%Library.PopulateUtils).USZip()
#define	Application			$Case($Random(4), 1:"Affinity", 2:"LabChart", :"Unity")
#define CurrentDate			$ZDate(+$Horolog, 8)
#define CurrentTime			$Translate($ZTime($Piece($Horolog, "," ,2) ,2) ,":")
#define Date				$ZDate(##class(%Library.PopulateUtils).Date(), 8)
#define Facility			##class(%Library.PopulateUtils).Company()
#define Float				##class(%Library.PopulateUtils).Float(,,2)
#define Integer				##class(%Library.PopulateUtils).Integer()
#define MessageControlID	$$$CurrentDate _ $$$String(5)
#define MessageType(%1)		$Piece(%1, "_", 1) _ "^" _ $Piece(%1, "_", 2)
#define Name				##class(%Library.PopulateUtils).LastName() _ "^" _ ##class(%Library.PopulateUtils).FirstName() _ "^" _ $$$String(1) _ "^JR^^^L"
#define NameFull			##class(%Library.PopulateUtils).Name()
#define NKRelationship		"FVP^Form completed by " _ $$$NameFull _ "-Vaccine Provider^" _ $$$String(5)
#define ObservationID		$$$String(5) _ "^Vaccine type^LN"
#define ObservationValue	$$$Integer
#define	PatientClass		$Case($Random(2), 1:"I", :"O")
#define PatientIDList		$$$Integer _ "^^^^SR~"_ $$$Integer _ "^^^^LR~" _ $$$Integer _"^^^^MR"
#define PatientLocation		$$$String(4) _ "^" _ $$$String(4) _ "^" _ $$$String(2)
#define Phone				##class(%Library.PopulateUtils).USPhone() _ "^^PRN"
#define Race				$$$Integer _ "^" _ $Case($Random(4), 1:"White", 2:"Black", 3:"Asian", :"Hispanic") _ "^HL70005"
#define ReferencesRange		$Random(100) _ "-" _ $Random(100)
#define Sex					$Case($Random(3), 1:"M", 2:"F", :"U")
#define SmallInteger		($Random(10) + 1)
#define String(%1)			##class(%Library.PopulateUtils).String(%1)
#define TimeStamp			$$$CurrentDate _ $$$CurrentTime
#define	TransactionType		$Case($Random(2), 1:"CD", :"CG")
#define Units				$$$Integer _ "^HepB-Adolescent/pediatric^CVX"
#define UniversalServiceID	"^CDC VAERS-1 (FDA) Report"