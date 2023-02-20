Profile: CompositionLabReportXeh
Parent: http://hl7.org/fhir/StructureDefinition/clinicaldocument
Id: Composition-lab-xeh
Title: "Composition: Laboratory Report"
Description: "Clinical document used to represent a Laboratory Report for the scope of the Xehealth project."
* ^publisher = "X-eHealth Project"
* ^copyright = "X-eHealth Project"
* . ^short = "Laboratory Report composition"
* . ^definition = "Laboratory Report composition.
\r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."
// what to do with the composition text ?
// should we make it 0.. ?
// or have text repeated here and in the sections ?
* extension contains CompositionBasedOnOrderOrRequisition named basedOn-order-or-requisition 0..*
* extension[basedOn-order-or-requisition].valueReference only Reference(ServiceRequestLabXeh)
* extension contains DiagnosticReportReference named diagnostic-report 1..1
/* * extension[diagnostic-report].valueReference only Reference(DiagnosticReportLabXeh)
* extension[diagnostic-report].valueReference 1..1 */

/*  TO DO Header
- add optional data enterer
- add optional Xeh Information Recipient
- defiend rules for attester to distiguish  Authenticators and Legal Auth 
- ordering provider mapped into the order details 
- addc Lab DocumentationOf.serviceEvent details
- ComponentOf.encounter define details in Encounter profile
*/

* text ^short = "Narrative text"
* identifier ^short = "Business identifier of the Laboratory Report (setID)"
* status ^short = "Status of the Report"
* type = $loinc#11502-2 // change to a VS binding
* type only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
  * ^short = "Kind of composition (\"Laboratory Report\")"
  * ^definition = "Specifies that this composition refer to a Laboratory Report"  
  // slice the subject tp cover the three cases of human ; non-human and mixed
* subject only Reference(PatientXeh or Patient or Group or Location or Device)
* subject 1..1
* encounter only Reference (Encounter)  // profile defined for other scopes to be checked
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


/*  IS THE SLICE NEEDED IN THIS CASE ?
// check with the XDlab structure */

* section ^slicing.discriminator[0].type = #exists
* section ^slicing.discriminator[0].path = "$this.section"
* section ^slicing.discriminator[+].type = #type
* section ^slicing.discriminator[=].path = "$this.entry.resolve()"
* section ^slicing.discriminator[+].type = #pattern
* section ^slicing.discriminator[=].path = "$this.code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open


/* TO DO

How to manage the Payer data ? should it be a separate section ? sboud they be part of the diagnosticReport ?
How to manage the annotation section ? should it be a separate section ?

*/

// --------------------------------------
// Common rules for all the sections
// ---------------------------------

* section.title 1..
* section.code 1..
* section.code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
// RH - this constraint to only Narrative is already in the base Composition resource
//* section.text only Narrative

// -------------------------------------
// Single section  0 .. 1
// -------------------------------------

// RH - Add 'xeh-' to the slice name, to clarify that there are potentially other "non-xeh" sections that do not meet the "xeh" sets of constraints
* section contains xeh-no-subsections ..* // check if ..1 or ..*
* section[xeh-no-subsections] ^short = "Variant 1: XeH section with text and entry"
// * section ^definition = "This section contains data describing an interest or worry about a health state or process that could possibly require attention, intervention, or management. A Health Concern is a health related matter that is of interest, importance or worry to someone, who may be the patient, patient's family or patient's health care provider. Health concerns are derived from a variety of sources within an EHR (such as Problem List, Family History, Social History, Social Worker Note, etc.). Health concerns can be medical, surgical, nursing, allied health or patient-reported concerns. Problem Concerns are a subset of Health Concerns that have risen to the level of importance that they typically would belong on a classic “Problem List”, such as “Diabetes Mellitus” or “Family History of Melanoma” or “Tobacco abuse”. These are of broad interest to multiple members of the care team. Examples of other Health Concerns that might not typically be considered a Problem Concern include “Risk of Hyperkalemia” for a patient taking an ACE-inhibitor medication, or “Transportation difficulties” for someone who doesn't drive and has trouble getting to appointments, or “Under-insured” for someone who doesn't have sufficient insurance to properly cover their medical needs such as medications. These are typically most important to just a limited number of care team members."

* section[xeh-no-subsections].code from LabStudyTypesXeh (preferred)
// * section.code = http://loinc.org#75310-3 (exactly) // add binding
* section[xeh-no-subsections].text ^short = "Text summary of the section, for human interpretation."

// add slices check the needed resources
// check structure of XD-LAB
// RH - allow a choice of both DiagnosticReport (optional) and Observation Results Lab (can be a single observation, or a grouper of nested observations)
// * section[xeh-no-subsections].entry only Reference (DiagnosticReportLabXeh or ObservationResultsLaboratoryXeh)
 // GC - decided to move the DiagnosticReport reference to an extension, instead
* section[xeh-no-subsections].entry only Reference (ObservationResultsLaboratoryXeh)
* section[xeh-no-subsections].section ..0

// -------------------------------------
// Structured sections  0 .. 1
// -------------------------------------

// RH - Add 'xeh-' to the slice name, to clarify that there are potentially other "non-xeh" sections that do not meet the "xeh" sets of constraints
* section contains xeh-subsections ..* // check if ..1 or ..*
* section[xeh-subsections] ^short = "Variant 2: XeH section with one to many subsections Laboratory Report Item"
// * section ^definition = "This section contains data describing an interest or worry about a health state or process that could possibly require attention, intervention, or management. A Health Concern is a health related matter that is of interest, importance or worry to someone, who may be the patient, patient's family or patient's health care provider. Health concerns are derived from a variety of sources within an EHR (such as Problem List, Family History, Social History, Social Worker Note, etc.). Health concerns can be medical, surgical, nursing, allied health or patient-reported concerns. Problem Concerns are a subset of Health Concerns that have risen to the level of importance that they typically would belong on a classic “Problem List”, such as “Diabetes Mellitus” or “Family History of Melanoma” or “Tobacco abuse”. These are of broad interest to multiple members of the care team. Examples of other Health Concerns that might not typically be considered a Problem Concern include “Risk of Hyperkalemia” for a patient taking an ACE-inhibitor medication, or “Transportation difficulties” for someone who doesn't drive and has trouble getting to appointments, or “Under-insured” for someone who doesn't have sufficient insurance to properly cover their medical needs such as medications. These are typically most important to just a limited number of care team members."
/* * section[xeh-subsections].title 1..
* section[xeh-subsections].code 1.. */
* section[xeh-subsections].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
// Should we also include the LabStudyTypesXeh (preferred) binding here?
* section[xeh-subsections].code from LabStudyTypesXeh (preferred)
// * section.code = http://loinc.org#75310-3 (exactly) // add binding
* section[xeh-subsections].text 0..0
* section[xeh-subsections].entry 0..0
// * section[xeh-subsections].text only Narrative
// add slices check the needed resoucres
* section[xeh-subsections].section 1..
  * code 1..
  * code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
  // And include the LabStudyTypesXeh (preferred) binding for the subsection here?
  * code from LabStudyTypesXeh (preferred)
  // * section.code = http://loinc.org#75310-3 (exactly) // add binding
  * text ^short = "Text summary of the section, for human interpretation."
  * entry 1..
  // RH - this constraint to only Narrative is already in the base Composition resource  
  //* text only Narrative
  // add slices check the needed resoucres
  // check structure of XD-LAB
  * entry only Reference (ObservationResultsLaboratoryXeh)
  // * section.entry only Reference (DiagnosticReportLabXeh or ObservationResultsLaboratoryXeh)

// -------------------------------------
// Payer section  0 .. 1
// Payer information moved to ServiceRequest
// -------------------------------------

/* * section contains payers ..* // check if ..1 or ..*
* section[payers]
  * ^short = "Payer section"
  * ^definition = "	Optional information on sources of reimbursement of the performed laboratory tests."
  * code = http://loinc.org#48768-6 (exactly) // add binding
  * text 1..
  * entry only Reference (Coverage)
  * section ..0 */

// -------------------------------------
// Annotation section  0 .. 1
// -------------------------------------

* section contains annotations ..* // check if ..1 or ..*
* section[annotations]
  * ^short = "Annotation comment"
  * ^definition = """Narrative expression of comments accompanying the report, such as suggestions for evaluation, technical notes from the laboratory, etc.

Examples:
Suggestion: This result should be evaluated in relation to the patient's medical history and clinical condition.
Technical note: A list of accredited examination(s) is available at www.laboratory.com. """

  * code = http://loinc.org#48767-8 (exactly) // add binding
  * text 1.. 
  * section ..0