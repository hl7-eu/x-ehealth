Profile: BundleLabReportXeh
Parent: Bundle
Id: Bundle-lab-xeh
Title: "Bundle: Laboratory Report (Xeh)"
Description: "Clinical document used to represent a Laboratory Report for the scope of the Xehealth project."
* ^publisher = "X-eHealth Project"
* ^copyright = "X-eHealth Project"
* . ^short = "Laboratory Report composition"
* . ^definition = "Laboratory Report composition."
* identifier ^short = "Business identifier for this Laboratory Report"
* type = #document
* timestamp 1..
* total ..0
* link ..0
* entry 1..
  * link ..0
  * fullUrl 1..1
  * resource 1..
  * search ..0
  * request ..0
  * response ..0
* signature ^short = "Digital Signature of this report"

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "$this.resolve()"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry contains composition 1..1
* entry[composition].resource only CompositionLabReportXeh

* entry contains diagnosticReport 0..1
* entry[diagnosticReport].resource only DiagnosticReportLabXeh

* entry contains patient 0..1
* entry[patient].resource only PatientXeh

* entry contains observation 0..*
* entry[observation].resource only Observation // Add profiles

* entry contains specimen 0..*
* entry[specimen].resource only Specimen // Add profiles

* entry contains serviceRequest 0..*
* entry[serviceRequest].resource only ServiceRequestLabXeh // Add profiles

* entry contains requestGroup 0..1
* entry[requestGroup].resource only RequestGroupLabXeh // Add profiles

// add slices

Profile: CompositionLabReportXeh
Parent: http://hl7.org/fhir/StructureDefinition/clinicaldocument
Id: Composition-lab-xeh
Title: "Composition: Laboratory Report (Xeh)"
Description: "Clinical document used to represent a Laboratory Report for the scope of the Xehealth project."
* ^publisher = "X-eHealth Project"
* ^copyright = "X-eHealth Project"
* . ^short = "Laboratory Report composition"
* . ^definition = "Laboratory Report composition.
\r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."
// what to do with the composition text ?
// should we make it 0.. ?
// or have text repeated here and in the sections ?
* extension contains OrderFulfilled named order 0..*
* extension[order].valueReference only Reference( ServiceRequestLabXeh or RequestGroupLabXeh)

/*  TO DO Header
- add optional data enterer
- add optional Xeh Information Recipient
- defiend rules for attester to distiguish  Authenticators and Legal Auth 
- ordering provider mapped into the order details 
- addc Lab DocumentationOf.serviceEvent details
- ComponentOf.encounter define details in Enouncter profile
*/

* text ^short = "Narrative text"
* identifier ^short = "Business identifier of the Laboratory Report (setID)"
* status ^short = "Status of the Report"
* type = $loinc#11502-2 // change to a VS binding
* type only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
  * ^short = "Kind of composition (\"Laboratory Report\")"
  * ^definition = "Specifies that this composition refer to a Laboratory Report"  
  // slice the subject tp cover the three cases of human ; non-human and mixed
* subject only Reference(PatientXeh)
* subject 1..1
* encounter only Reference (EncounterXeh)  // profile defined for other scopes to be checked
* author 1..
* author ^short = "Who and/or what authored the Laboratory Report"
* author ^definition = "Identifies who is responsible for the information in the Laboratory Report, not necessarily who typed it in."
* attester 1.. // RH - should attester be 1.. or 0..? - since author is also required? 
* event ^short = "The laboratory service(s) being documented"
// add details about the service
* title 1..
* title ^short = "Laboratory Report"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Laboratory Report\" or any equivalent translation"



// ServiceRequest and/or RequestGroup

// add attester
// RH - attester is already being included above?

// 

/*  IS THE SLICE NEEDED IN THIS CASE ?
// check with the XDlab structure */

* section ^slicing.discriminator[0].type = #exists
* section ^slicing.discriminator[0].path = "$this.section"
* section ^slicing.ordered = false
* section ^slicing.rules = #closed


/* TO DO

How to manage the Payer data ? should it be a separate section ? sboud they be part of the diagnosticReport ?
How to manage the annotation section ? should it be a separate section ?

*/


// -------------------------------------
// Single section  0 .. 1
// -------------------------------------

* section contains no-subsections ..* // check if ..1 or ..*
* section[no-subsections] ^short = "Variant 1: section with text and entry"
// * section ^definition = "This section contains data describing an interest or worry about a health state or process that could possibly require attention, intervention, or management. A Health Concern is a health related matter that is of interest, importance or worry to someone, who may be the patient, patient's family or patient's health care provider. Health concerns are derived from a variety of sources within an EHR (such as Problem List, Family History, Social History, Social Worker Note, etc.). Health concerns can be medical, surgical, nursing, allied health or patient-reported concerns. Problem Concerns are a subset of Health Concerns that have risen to the level of importance that they typically would belong on a classic “Problem List”, such as “Diabetes Mellitus” or “Family History of Melanoma” or “Tobacco abuse”. These are of broad interest to multiple members of the care team. Examples of other Health Concerns that might not typically be considered a Problem Concern include “Risk of Hyperkalemia” for a patient taking an ACE-inhibitor medication, or “Transportation difficulties” for someone who doesn't drive and has trouble getting to appointments, or “Under-insured” for someone who doesn't have sufficient insurance to properly cover their medical needs such as medications. These are typically most important to just a limited number of care team members."
* section[no-subsections].title 1..
* section[no-subsections].code 1..
* section[no-subsections].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[no-subsections].code from LabStudyTypesXeh (preferred)
// * section.code = http://loinc.org#75310-3 (exactly) // add binding
* section[no-subsections].text 1..
* section[no-subsections].text only Narrative
// add slices check the needed resources
// check structure of XD-LAB
// RH - allow a choice of both DiagnosticReport (optional) and Observation Results Lab (can be a single observation, or a grouper of nested observations)
* section[no-subsections].entry only Reference (DiagnosticReportLabXeh or ObservationResultsLaboratoryXeh)
* section[no-subsections].section ..0

// -------------------------------------
// Structured section  0 .. 1
// -------------------------------------

* section contains subsections ..* // check if ..1 or ..*
* section[subsections] ^short = "Variant 2: section with one to many subsections Laboratory Report Item"
// * section ^definition = "This section contains data describing an interest or worry about a health state or process that could possibly require attention, intervention, or management. A Health Concern is a health related matter that is of interest, importance or worry to someone, who may be the patient, patient's family or patient's health care provider. Health concerns are derived from a variety of sources within an EHR (such as Problem List, Family History, Social History, Social Worker Note, etc.). Health concerns can be medical, surgical, nursing, allied health or patient-reported concerns. Problem Concerns are a subset of Health Concerns that have risen to the level of importance that they typically would belong on a classic “Problem List”, such as “Diabetes Mellitus” or “Family History of Melanoma” or “Tobacco abuse”. These are of broad interest to multiple members of the care team. Examples of other Health Concerns that might not typically be considered a Problem Concern include “Risk of Hyperkalemia” for a patient taking an ACE-inhibitor medication, or “Transportation difficulties” for someone who doesn't drive and has trouble getting to appointments, or “Under-insured” for someone who doesn't have sufficient insurance to properly cover their medical needs such as medications. These are typically most important to just a limited number of care team members."
* section[subsections].title 1..
* section[subsections].code 1..
* section[subsections].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
// Should we also include the LabStudyTypesXeh (preferred) binding here?
* section[subsections].code from LabStudyTypesXeh (preferred)
// * section.code = http://loinc.org#75310-3 (exactly) // add binding
* section[subsections].text 0..0
* section[subsections].entry 0..0
* section[subsections].text only Narrative
// add slices check the needed resoucres
* section[subsections].section 1..
  * section.code 1..
  * section.code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
  // And include the LabStudyTypesXeh (preferred) binding for the subsection here?
  * section.code from LabStudyTypesXeh (preferred)
  // * section.code = http://loinc.org#75310-3 (exactly) // add binding
  * section.text 1..
  * section.entry 1..
  * section.text only Narrative
  // add slices check the needed resoucres
  // check structure od XD-LAB
  // RH - allow a choice of both DiagnosticReport (optional) and Observation Results Lab (can be a single observation, or a grouper of nested observations)
  * section.entry only Reference (DiagnosticReportLabXeh or ObservationResultsLaboratoryXeh)
