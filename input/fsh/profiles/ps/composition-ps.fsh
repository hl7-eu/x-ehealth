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

* insert AlertSectionRules

// -------------------------------------
// Care Team 0 .. 1
// -------------------------------------

* insert CareTeamSectionRules
