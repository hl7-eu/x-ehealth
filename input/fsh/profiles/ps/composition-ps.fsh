Profile: CompositionPsXehealth
Parent: $Composition-uv-ips
Id: Composition-ps-xeh
Title: "Patient Summary (X-eHealth)"
Description: "Clinical document used to represent a Patient Summary (PS) for the scope of the XeHealth project."
* ^publisher = "X-eHealth Project"
* ^copyright = "X-eHealth Project"
* . MS
* . ^short = "Patient Summary composition"
* . ^definition = "Patient Summary composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."
* text MS
* identifier MS
* status MS
* type MS
* type only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* type ^short = "Kind of composition (\"Patient Summary\")"
* type ^definition = "Specifies that this composition refer to a Patient Summary"
* subject only Reference(PatientXeh)
* subject 1..1 MS
* subject ^definition = "Who or what the composition is about. \r\nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\r\nFor the hdr the subject is always the patient."
* author MS
* author ^short = "Who and/or what authored the Patient Summary"
* author ^definition = "Identifies who is responsible for the information in the Patient Summary, not necessarily who typed it in."
* author.reference MS
* title MS
* title ^short = "Patient Summary"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Patient Summary\" or any equivalent translation"

* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open

// -------------------------------------
// Alert 0 .. 1
// -------------------------------------
* section contains AlertSection ..1 MS
* section[AlertSection] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[AlertSection] ^extension[0].valueString = "Section"
* section[AlertSection] ^short = "Health Concern Section"
* section[AlertSection] ^definition = "This section contains data describing an interest or worry about a health state or process that could possibly require attention, intervention, or management. A Health Concern is a health related matter that is of interest, importance or worry to someone, who may be the patient, patient's family or patient's health care provider. Health concerns are derived from a variety of sources within an EHR (such as Problem List, Family History, Social History, Social Worker Note, etc.). Health concerns can be medical, surgical, nursing, allied health or patient-reported concerns. Problem Concerns are a subset of Health Concerns that have risen to the level of importance that they typically would belong on a classic “Problem List”, such as “Diabetes Mellitus” or “Family History of Melanoma” or “Tobacco abuse”. These are of broad interest to multiple members of the care team. Examples of other Health Concerns that might not typically be considered a Problem Concern include “Risk of Hyperkalemia” for a patient taking an ACE-inhibitor medication, or “Transportation difficulties” for someone who doesn't drive and has trouble getting to appointments, or “Under-insured” for someone who doesn't have sufficient insurance to properly cover their medical needs such as medications. These are typically most important to just a limited number of care team members."
* section[AlertSection].title 1.. MS
* section[AlertSection].code 1.. MS
* section[AlertSection].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[AlertSection].code = http://loinc.org#75310-3 (exactly)
* section[AlertSection].text 1.. MS
* section[AlertSection].text only Narrative

// ==> add slices

* section[AlertSection].entry 0.. 
* section[AlertSection].entry ^slicing.discriminator[0].type = #type
* section[AlertSection].entry ^slicing.discriminator[0].path = "resolve()"
* section[AlertSection].entry ^slicing.ordered = false
* section[AlertSection].entry ^slicing.rules = #open
* section[AlertSection].entry ^short = "Alerts"
* section[AlertSection].entry ^definition = "Alerts"

* section[AlertSection].entry contains flags 0..1
* section[AlertSection].entry[flags] 0.. MS
* section[AlertSection].entry[flags] ^short = "Highlighted issue"
* section[AlertSection].entry[flags] ^definition = "Highlighted issue"
* section[AlertSection].entry[flags] only Reference(FlagXeh)

* section[AlertSection].entry contains detectedIssues 0..1
* section[AlertSection].entry[detectedIssues] 0.. 
* section[AlertSection].entry[detectedIssues] ^short = "Detected Issue"
* section[AlertSection].entry[detectedIssues] ^definition = "Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction, Ineffective treatment frequency, Procedure-condition conflict, etc."
* section[AlertSection].entry[detectedIssues] only Reference(DetectedIssue)

* section[AlertSection].entry contains riskAssessments 0..1
* section[AlertSection].entry[riskAssessments] 0.. 
* section[AlertSection].entry[riskAssessments] ^short = "Risk Assessment"
* section[AlertSection].entry[riskAssessments] ^definition = "An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome."
* section[AlertSection].entry[riskAssessments] only Reference(RiskAssessment)


* section[AlertSection].emptyReason ..0
* section[AlertSection].emptyReason ^mustSupport = false
* section[AlertSection].section ..0
* section[AlertSection].section ^mustSupport = false


// -------------------------------------
// Care Team 0 .. 1
// -------------------------------------
* section contains CareTeamSection ..1 MS
* section[CareTeamSection] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[CareTeamSection] ^extension[0].valueString = "Section"
* section[CareTeamSection] ^short = "Care Team Section"
* section[CareTeamSection] ^definition = "The Care Team Section is used to share historical and current Care Team information."
* section[CareTeamSection].title 1.. MS
* section[CareTeamSection].code 1.. MS
* section[CareTeamSection].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[CareTeamSection].code = http://loinc.org#85847-2 (exactly)
* section[CareTeamSection].text 1.. MS
* section[CareTeamSection].text only Narrative

// ==> add slices

* section[CareTeamSection].entry 0.. 
* section[CareTeamSection].entry ^slicing.discriminator[0].type = #type
* section[CareTeamSection].entry ^slicing.discriminator[0].path = "resolve()"
* section[CareTeamSection].entry ^slicing.ordered = false
* section[CareTeamSection].entry ^slicing.rules = #open
* section[CareTeamSection].entry ^short = "Care Teams"
* section[CareTeamSection].entry ^definition = "Care Teams"

* section[CareTeamSection].entry contains flags 0..1
* section[CareTeamSection].entry[flags] 0.. MS
* section[CareTeamSection].entry[flags] ^short = "Care Team"
* section[CareTeamSection].entry[flags] ^definition = "Care Team"
* section[CareTeamSection].entry[flags] only Reference(CareTeamXeh)


* section[CareTeamSection].emptyReason ..0
* section[CareTeamSection].emptyReason ^mustSupport = false
* section[CareTeamSection].section ..0
* section[CareTeamSection].section ^mustSupport = false
