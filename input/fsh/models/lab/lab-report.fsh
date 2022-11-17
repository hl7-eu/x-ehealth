// -------------------------------------------------------------------------------
//  Logical Model
// -------------------------------------------------------------------------------
Logical: LabReportEhn
Id: LabReport
Title: "Laboratory Report"
Description:  """Laboratory Report"""
* header 1..1 BackboneElement "A.1 Report header data elements" """A.1 Report header data elements"""
* header.subject 1..1 BackboneElement "Patient/subject" """A.1.1ÿIdentification of the patient/subject and A.1.2 Patient/subject related contact informationÿÿ"""
* header.paymentData 0..1 BackboneElement "A.1.3 Health insuranceÿand paymentÿinformation" """A.1.3 Health insuranceÿand paymentÿinformation"""
* header.informationRecipient 0..1 BackboneElement "A.1.4 Information recipient" """A.1.4 Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist),ÿif applicable"""
* header.validator 0..* BackboneElement "A.1.7 Result validator" """A.1.7 Result validator"""
* header.metadata 1..1 CodeableConcept "A.1.8 Laboratory report metadata" """A.1.8 Laboratory report metadata"""
* header.metadata.type 1..1 CodeableConcept "A.1.8.1 Document type" """A coded type of the document. Fixed value ""Laboratory report"" - Preferred system(s): LOINC"""
* header.metadata.status 1..1 CodeableConcept "A.1.8.2 Document status" """The status of the laboratory test result report. E.g., preliminary, final. - Preferred system(s): hl7:DiagnosticReportStatus"""
* header.metadata.dateTime 1..1 dateTime "A.1.8.3 Report date and time" """Date and time of the result report creation. - Preferred system(s): ISO 8601"""
* header.metadata.title 0..1 string "A.1.8.4 Document title" """Document title, e.g. ""Laboratory Result report"" - Preferred system(s): """
* header.metadata.custodian 0..1 BackboneElement "A.1.8.5 Report custodian" """Organisation that is in charge of maintaining the laboratory report - Preferred system(s): """
//--- END










// -------------------------------------------------------------------------------
//  Map to FHIR R4
// -------------------------------------------------------------------------------
Mapping: eHNLab2Fhir
Id: fhir
Title: "eHN Lab model to FHIR R4 Map"
Source: LabReport
Target: "hl7.org/fhir/r4"

* -> "Bundle.conformsTo('http://hl7.eu/fhir/ig/xeh/StructureDefinition/Bundle-lab-xeh')"
* header -> "Composition.conformsTo('http://hl7.eu/fhir/ig/xeh/StructureDefinition/Composition-lab-xeh')"
* header.subject -> "Composition.subject"
* header.paymentData -> "To be mapped"
* header.informationRecipient -> ".extension('http://hl7.org/fhir/StructureDefinition/cqf-receivingOrganization')"
* header.validator -> "Composition.attester"
* header.metadata -> "Composition"
* header.metadata.type -> "Composition.type"
* header.metadata.status -> "Composition.status"
* header.metadata.dateTime -> "Bundle.timestamp"
* header.metadata.title -> "Composition.title"
* header.metadata.custodian -> "Composition.custodian"
// --END



























































































































































