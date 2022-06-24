Profile: CompositionXehealth
Parent: http://hl7.org/fhir/StructureDefinition/clinicaldocument
Id: Composition-eu-xeh
Title: "Clinical Document (X-eHealth)"
Description: "Generic Clinical Document profile for the X-eHealth project."
* ^status = #active
* . ^short = "International Patient Summary composition"
* . ^definition = "This profiles specifies common rules for clincal document to be used for the X-eHealth project. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."
* text MS
* identifier MS
* status MS
* type only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* type MS
* type ^short = "Kind of composition (\"e.g. Patient Summary\")"
* type ^definition = "Specifies the type of document this composition refers to, e.g. a Patient Summary (Loinc \"60591-5\")"
* subject only Reference(PatientXeh)
* subject MS
* subject ^definition = "Who or what the composition is about. \r\nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\r\nFor the IPS the subject is always the patient."
* subject.reference 1.. MS
* encounter MS
* date MS
* author MS
* author ^short = "Who and/or what authored the document"
* author ^definition = "Identifies who is responsible for the information in the document, not necessarily who typed it in."
* title MS
* attester MS
* attester.mode MS
* attester.time MS
* attester.party MS
* custodian MS
* relatesTo MS
* relatesTo.code MS
* relatesTo.target[x] only Identifier or Reference(http://hl7.org/fhir/StructureDefinition/Composition)
* relatesTo.target[x] MS
* event MS
* section 1.. MS