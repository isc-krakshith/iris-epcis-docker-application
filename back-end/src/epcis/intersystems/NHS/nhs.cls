/// 
Class EPCIS.intersystems.NHS.nhs Extends (%RegisteredObject, %XML.Adaptor) [ ProcedureBlock ]
{

Parameter ELEMENTQUALIFIED = 1;

Parameter NAMESPACE = "http://epcis.gs1uk.org/nhs/";

Parameter XMLNAME = "nhs";

Parameter XMLSEQUENCE = 1;

Property inpatientSpellId As %xsd.int(XMLNAME = "inpatientSpellId");

Property inpatientWardStayId As %xsd.int(XMLNAME = "inpatientWardStayId");

Property PASnumber As %String(MAXLEN = "", XMLNAME = "PASnumber");

Property attendingMD As %String(MAXLEN = "", XMLNAME = "attendingMD");

Property consultantID As consultantID(XMLNAME = "consultantID");

Property medDevice As %String(MAXLEN = "", XMLNAME = "medDevice");

Property insertionSite As %String(MAXLEN = "", XMLNAME = "insertionSite");

Property primaryNurse As %String(MAXLEN = "", XMLNAME = "primaryNurse");

Property treatmentGTIN As %String(MAXLEN = "", XMLNAME = "treatmentGTIN");

Property OPCScode As %String(MAXLEN = "", XMLNAME = "OPCScode");

Property therapist As %String(MAXLEN = "", XMLNAME = "therapist");

Property therapyAnimal As therapyAnimal(XMLNAME = "therapyAnimal");

Property recallReason As %String(MAXLEN = "", XMLNAME = "recallReason");

}
