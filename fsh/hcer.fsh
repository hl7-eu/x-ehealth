Profile: CompositionHcerXehealth
Parent: http://hl7.org/fhir/StructureDefinition/clinicaldocument
Id: Composition-hcer-xeh
Title: "Encounter Report (X-eHealth)"
Description: "Clinical document used to represent a generic Encounter Report (HCER) data set. The HCER dataset is a minimal and non-exhaustive dataset, specialty-agnostic, condition-independent, but readily usable by clinicians for the cross-border care of a patient."
* ^publisher = "X-eHealth Project"
* ^copyright = "X-eHealth Project"
* . MS
* . ^short = "Encounter Report composition"
* . ^definition = "Encounter Report composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."
* text MS
* identifier MS
* status MS
* type MS
* type only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* type ^short = "Kind of composition (\"Patient Summary\")"
* type ^definition = "Specifies that this composition refer to a Patient Summary (Loinc \"60591-5\")"
* type = http://loinc.org#34133-9
* subject only Reference(PatientXeh)
* subject 1..1 MS
* subject ^definition = "Who or what the composition is about. \r\nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\r\nFor the HCER the subject is always the patient."
* encounter MS
* date MS
* author MS
* author ^short = "Who and/or what authored the Encounter Report"
* author ^definition = "Identifies who is responsible for the information in the Encounter Report, not necessarily who typed it in.\r\n\r\nThe type of author(s) contribute to determine the \"nature\"of the Patient Summary: e.g. a \"human-curated\" Encounter Report Vs. an \"automatically generated\" Encounter Report."
* author.reference MS
* title MS
* title ^short = "Enconter Report (X-eHealth)"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Encounter Report\" or any equivalent translation"
* confidentiality MS
* attester MS
* attester.mode MS
* attester.time MS
* attester.party MS
* attester.party.reference MS
* custodian MS
* custodian.reference MS
* relatesTo MS
* relatesTo.code MS
* relatesTo.target[x] MS
* section 1.. MS
* section ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension[0].valueString = "Section"
* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the HCER"
* section ^definition = "The root of the sections that make up the HCER composition."
* section contains sectionMedications 1..1 MS
* section[sectionMedications] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMedications] ^extension[0].valueString = "Section"
* section[sectionMedications] ^short = "HCER Medication Summary Section"
* section[sectionMedications] ^definition = "The medication summary section contains a description of the patient's medications relevant for the scope of the patient summary.\r\nThe actual content could depend on the jurisdiction, it could report:\r\n- the currently active medications; \r\n- the current and past medications considered relevant by the authoring GP; \r\n- the patient prescriptions or dispensations automatically extracted by a regional or a national EHR.\r\n\r\nIn all those cases however medications are documented in the Patient Summary as medication statements.\r\nThis section requires either an entry indicating the subject is known not to be on any medications; either an entry indicating that no information is available about medications; or entries summarizing the subject's medications."
* section[sectionMedications].title 1.. MS
* section[sectionMedications].title ^short = "Medication Summary section"
* section[sectionMedications].title ^definition = "The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents.\r\n\r\nMedication Summary"
* section[sectionMedications].code 1.. MS
* section[sectionMedications].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionMedications].code = http://loinc.org#10160-0 (exactly)
* section[sectionMedications].text 1.. MS
* section[sectionMedications].text only Narrative
* section[sectionMedications].entry 1.. MS
* section[sectionMedications].entry ^short = "Medications relevant for the scope of the patient summary"
* section[sectionMedications].entry ^definition = "This list the medications relevant for the scope of the patient summary or it is used to indicate that the subject is known not to be on any relevant medication; either that no information is available about medications."
* section[sectionMedications].emptyReason ..0
* section[sectionMedications].emptyReason ^mustSupport = false
* section[sectionMedications].section ..0
* section[sectionMedications].section ^mustSupport = false
* section contains sectionAllergies 1..1 MS
* section[sectionAllergies] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionAllergies] ^extension[0].valueString = "Section"
* section[sectionAllergies] ^short = "HCER Allergies and Intolerances Section"
* section[sectionAllergies] ^definition = "This section documents the relevant allergies or intolerances (conditions) for that patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum, it should list currently active and any relevant historical allergies and adverse reactions.\r\nIf no information about allergies is available, or if no allergies are known this should be clearly documented in the section."
* section[sectionAllergies].title 1.. MS
* section[sectionAllergies].code 1.. MS
* section[sectionAllergies].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionAllergies].code = http://loinc.org#48765-2 (exactly)
* section[sectionAllergies].text 1.. MS
* section[sectionAllergies].text only Narrative
* section[sectionAllergies].entry 1.. MS
* section[sectionAllergies].entry ^short = "Relevant allergies or intolerances (conditions) for that patient."
* section[sectionAllergies].entry ^definition = "It lists the relevant allergies or intolerances (conditions) for that patient, describing the kind of reaction (e.g. rash, anaphylaxis,..); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum, it should list currently active and any relevant historical allergies and adverse reactions.\r\n This entry shall be used to document that no information about allergies is available, or that no allergies are known ."
* section[sectionAllergies].emptyReason ..0
* section[sectionAllergies].emptyReason ^mustSupport = false
* section[sectionAllergies].section ..0
* section[sectionAllergies].section ^mustSupport = false
* section contains sectionProblems ..1 MS
* section[sectionProblems] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProblems] ^extension[0].valueString = "Section"
* section[sectionProblems] ^short = "HCER Problems Section"
* section[sectionProblems] ^definition = "The HCER problem section lists and describes clinical problems or conditions currently being monitored for the patient."
* section[sectionProblems].title 1.. MS
* section[sectionProblems].code 1.. MS
* section[sectionProblems].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionProblems].code = http://loinc.org#11450-4 (exactly)
* section[sectionProblems].text 1.. MS
* section[sectionProblems].text only Narrative
* section[sectionProblems].entry 1.. MS
* section[sectionProblems].entry ^short = "Clinical problems or conditions currently being monitored for the patient."
* section[sectionProblems].entry ^definition = "It lists and describes clinical problems or conditions currently being monitored for the patient.  This entry shall be used to document that no information about problems is available, or that no relevant problems are known."
* section[sectionProblems].emptyReason ..0
* section[sectionProblems].emptyReason ^mustSupport = false
* section[sectionProblems].section ..0
* section[sectionProblems].section ^mustSupport = false
* section contains sectionProceduresHx ..1 MS
* section[sectionProceduresHx] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProceduresHx] ^extension[0].valueString = "Section"
* section[sectionProceduresHx] ^short = "HCER History of Procedures Section"
* section[sectionProceduresHx] ^definition = "The History of Procedures Section contains a description of the patient past procedures that are pertinent to the scope of this document.\r\nProcedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy"
* section[sectionProceduresHx].title 1.. MS
* section[sectionProceduresHx].code 1.. MS
* section[sectionProceduresHx].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionProceduresHx].code = http://loinc.org#47519-4 (exactly)
* section[sectionProceduresHx].text 1.. MS
* section[sectionProceduresHx].text only Narrative
* section[sectionProceduresHx].entry 1..1 MS
* section[sectionProceduresHx].entry ^short = "Patient past procedures pertinent to the scope of this document."
* section[sectionProceduresHx].entry ^definition = "It lists the patient past procedures that are pertinent to the scope of this document.\r\nProcedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy. This entry shall be used to document that no information about past procedures is available, or that no relevant past procedures are known."
* section[sectionProceduresHx].emptyReason ..0
* section[sectionProceduresHx].emptyReason ^mustSupport = false
* section[sectionProceduresHx].section ..0
* section[sectionProceduresHx].section ^mustSupport = false
* section contains sectionImmunizations ..1 MS
* section[sectionImmunizations] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionImmunizations] ^extension[0].valueString = "Section"
* section[sectionImmunizations] ^short = "HCER Immunizations Section"
* section[sectionImmunizations] ^definition = "The Immunizations Section defines a patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nThe section includes current immunization status, and may contain the entire immunization history that is relevant to the period of time being summarized."
* section[sectionImmunizations].title 1.. MS
* section[sectionImmunizations].code 1.. MS
* section[sectionImmunizations].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionImmunizations].code = http://loinc.org#11369-6 (exactly)
* section[sectionImmunizations].text 1.. MS
* section[sectionImmunizations].text only Narrative
* section[sectionImmunizations].entry 1.. MS
* section[sectionImmunizations].entry ^short = "Patient's immunization status and pertinent history."
* section[sectionImmunizations].entry ^definition = "It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nIt may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available, or that no immunizations are known."
* section[sectionImmunizations].emptyReason ..0
* section[sectionImmunizations].emptyReason ^mustSupport = false
* section[sectionImmunizations].section ..0
* section[sectionImmunizations].section ^mustSupport = false
* section contains sectionMedicalDevices ..1 MS
* section[sectionMedicalDevices] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMedicalDevices] ^extension[0].valueString = "Section"
* section[sectionMedicalDevices] ^short = "HCER Medical Devices Section"
* section[sectionMedicalDevices] ^definition = "The medical devices section contains narrative text and coded entries describing the patient history of medical device use."
* section[sectionMedicalDevices].title 1.. MS
* section[sectionMedicalDevices].code 1.. MS
* section[sectionMedicalDevices].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionMedicalDevices].code = http://loinc.org#46264-8 (exactly)
* section[sectionMedicalDevices].text 1.. MS
* section[sectionMedicalDevices].text only Narrative
* section[sectionMedicalDevices].entry 1.. MS
* section[sectionMedicalDevices].entry ^short = "Patient history of medical device use."
* section[sectionMedicalDevices].entry ^definition = "It describes the patient history of medical device use. This entry shall be used to document that no information about medical device use is available, or that no relevant medical device use is known."
* section[sectionMedicalDevices].emptyReason ..0
* section[sectionMedicalDevices].emptyReason ^mustSupport = false
* section[sectionMedicalDevices].section ..0
* section[sectionMedicalDevices].section ^mustSupport = false
* section contains sectionResults ..1 MS
* section[sectionResults] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionResults] ^extension[0].valueString = "Results Section"
* section[sectionResults] ^short = "IPS Results Section"
* section[sectionResults] ^definition = "This section assembles relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient. Some of these results may be laboratory results, others may be anatomic pathology results, others, radiology results, and others, clinical results."
* section[sectionResults].title 1.. MS
* section[sectionResults].code 1.. MS
* section[sectionResults].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionResults].code = http://loinc.org#30954-2 (exactly)
* section[sectionResults].text 1.. MS
* section[sectionResults].entry MS
* section[sectionResults].entry ^short = "Relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient."
* section[sectionResults].entry ^definition = "Relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient. Some of these results may be laboratory results, others may be anatomic pathology results, others, radiology results, and others, clinical results."
* section[sectionResults].emptyReason ..0
* section[sectionResults].emptyReason ^mustSupport = false
* section[sectionResults].section ..0
* section[sectionResults].section ^mustSupport = false
* section contains sectionVitalSigns ..1 MS
* section[sectionVitalSigns] ..1 MS
* section[sectionVitalSigns] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionVitalSigns] ^extension[0].valueString = "Vital Signs Section"
* section[sectionVitalSigns] ^label = "Vital signs"
* section[sectionVitalSigns] ^short = "IPS Vital Signs Section"
* section[sectionVitalSigns] ^definition = "The Vital signs section includes blood pressure, body temperature, heart rate, and respiratory rate. It may also include other clinical findings, such as height, weight, body mass index, head circumference, and pulse oximetry. In particular, notable vital signs or physical findings such as the most recent, maximum and/or minimum, baseline, or relevant trends may be included"
* section[sectionVitalSigns].title 1.. MS
* section[sectionVitalSigns].code 1.. MS
* section[sectionVitalSigns].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionVitalSigns].code = http://loinc.org#8716-3 (exactly)
* section[sectionVitalSigns].text 1.. MS
* section[sectionVitalSigns].text only Narrative
* section[sectionVitalSigns].entry MS
* section[sectionVitalSigns].entry ^short = "Notable vital signs or physical findings."
* section[sectionVitalSigns].entry ^definition = "Notable vital signs or physical findings as: blood pressure, body temperature, heart rate, and respiratory rate. It may also include other clinical findings, such as height, weight, body mass index, head circumference, and pulse oximetry. In particular, notable vital signs or physical findings such as the most recent, maximum and/or minimum, baseline, or relevant trends may be included"
* section[sectionVitalSigns].emptyReason ..0
* section[sectionVitalSigns].emptyReason ^mustSupport = false
* section[sectionVitalSigns].section ..0
* section[sectionVitalSigns].section ^mustSupport = false
* section contains sectionPastIllnessHx ..1 MS
* section[sectionPastIllnessHx] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPastIllnessHx] ^extension[0].valueString = "Section"
* section[sectionPastIllnessHx] ^short = "HCER History of Past Illness Section"
* section[sectionPastIllnessHx] ^definition = "The History of Past Illness section contains a narrative description and coded entries of the conditions the patient suffered in the past"
* section[sectionPastIllnessHx].title 1.. MS
* section[sectionPastIllnessHx].code 1.. MS
* section[sectionPastIllnessHx].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionPastIllnessHx].code = http://loinc.org#11348-0 (exactly)
* section[sectionPastIllnessHx].text 1.. MS
* section[sectionPastIllnessHx].entry 1.. MS
* section[sectionPastIllnessHx].entry ^short = "Conditions the patient suffered in the past."
* section[sectionPastIllnessHx].entry ^definition = "It contains a description of the conditions the patient suffered in the past."
* section[sectionPastIllnessHx].emptyReason ..0
* section[sectionPastIllnessHx].emptyReason ^mustSupport = false
* section[sectionPastIllnessHx].section ..0
* section[sectionPastIllnessHx].section ^mustSupport = false
* section contains sectionFunctionalStatus ..1 MS
* section[sectionFunctionalStatus] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionFunctionalStatus] ^extension[0].valueString = "Section"
* section[sectionFunctionalStatus] ^short = "IPS Functional Status"
* section[sectionFunctionalStatus] ^definition = "The functional status section shall contain a narrative description of capability of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide."
* section[sectionFunctionalStatus].title 1.. MS
* section[sectionFunctionalStatus].code 1.. MS
* section[sectionFunctionalStatus].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionFunctionalStatus].code = http://loinc.org#47420-5 (exactly)
* section[sectionFunctionalStatus].text 1.. MS
* section[sectionFunctionalStatus].text only Narrative
* section[sectionFunctionalStatus].entry MS
* section[sectionFunctionalStatus].entry ^short = "Optional entry used to represent disabilities and functional assessments"
* section[sectionFunctionalStatus].entry ^definition = "It describes capabilities of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide."
* section[sectionFunctionalStatus].emptyReason ..0
* section[sectionFunctionalStatus].emptyReason ^mustSupport = false
* section[sectionFunctionalStatus].section ..0
* section[sectionFunctionalStatus].section ^mustSupport = false
* section contains sectionPlanOfCare ..1 MS
* section[sectionPlanOfCare] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPlanOfCare] ^extension[0].valueString = "Section"
* section[sectionPlanOfCare] ^short = "IPS Plan of Care Section"
* section[sectionPlanOfCare] ^definition = "The plan of care section contains a narrative description of the expectations for care including proposals, goals, and order requests for monitoring, tracking, or improving the condition of the patient."
* section[sectionPlanOfCare].title 1.. MS
* section[sectionPlanOfCare].code 1.. MS
* section[sectionPlanOfCare].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionPlanOfCare].code = http://loinc.org#18776-5 (exactly)
* section[sectionPlanOfCare].text 1.. MS
* section[sectionPlanOfCare].text only Narrative
* section[sectionPlanOfCare].emptyReason ..0
* section[sectionPlanOfCare].emptyReason ^mustSupport = false
* section[sectionPlanOfCare].section ..0
* section[sectionPlanOfCare].section ^mustSupport = false
* section contains sectionSocialHistory ..1 MS
* section[sectionSocialHistory] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionSocialHistory] ^extension[0].valueString = "Section"
* section[sectionSocialHistory] ^short = "HCER Social History Section"
* section[sectionSocialHistory] ^definition = "The social history section contains a description of the person’s Health related “lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].title 1.. MS
* section[sectionSocialHistory].code 1.. MS
* section[sectionSocialHistory].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionSocialHistory].code = http://loinc.org#29762-2 (exactly)
* section[sectionSocialHistory].text 1.. MS
* section[sectionSocialHistory].entry ..1 MS
* section[sectionSocialHistory].entry ^short = "Health related \"lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].entry ^definition = "Description of the person’s Health related “lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].emptyReason ..0
* section[sectionSocialHistory].emptyReason ^mustSupport = false
* section[sectionSocialHistory].section ..0
* section[sectionSocialHistory].section ^mustSupport = false
* section contains sectionPregnancyHx ..1 MS
* section[sectionPregnancyHx] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPregnancyHx] ^extension[0].valueString = "Section"
* section[sectionPregnancyHx] ^short = "IPS History of Pregnancy Section"
* section[sectionPregnancyHx] ^definition = "The history of pregnancy section shall contain information about whether the patient is currently pregnant or not.\r\nIt may contain addition summarizing information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].title 1.. MS
* section[sectionPregnancyHx].code 1.. MS
* section[sectionPregnancyHx].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionPregnancyHx].code = http://loinc.org#10162-6 (exactly)
* section[sectionPregnancyHx].text 1.. MS
* section[sectionPregnancyHx].entry MS
* section[sectionPregnancyHx].entry ^short = "Current pregnancy status and, optionally, information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].entry ^definition = "It contains information about whether the patient is currently pregnant or not.\r\nIt may contain addition summarizing information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].emptyReason ..0
* section[sectionPregnancyHx].emptyReason ^mustSupport = false
* section[sectionPregnancyHx].section ..0
* section[sectionPregnancyHx].section ^mustSupport = false
* section contains sectionAdvanceDirectives ..1 MS
* section[sectionAdvanceDirectives] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionAdvanceDirectives] ^extension[0].valueString = "Section"
* section[sectionAdvanceDirectives] ^short = "IPS Advance Directives Section"
* section[sectionAdvanceDirectives] ^definition = "The advance directives section contains a narrative description of patient's advance directive."
* section[sectionAdvanceDirectives].title 1.. MS
* section[sectionAdvanceDirectives].code 1.. MS
* section[sectionAdvanceDirectives].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionAdvanceDirectives].code = http://loinc.org#42348-3 (exactly)
* section[sectionAdvanceDirectives].text 1.. MS
* section[sectionAdvanceDirectives].text only Narrative
* section[sectionAdvanceDirectives].entry MS
* section[sectionAdvanceDirectives].emptyReason ..0
* section[sectionAdvanceDirectives].emptyReason ^mustSupport = false
* section[sectionAdvanceDirectives].section ..0
* section[sectionAdvanceDirectives].section ^mustSupport = false
* section contains sectionEncounters ..1 MS
* section[sectionEncounters] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionEncounters] ^extension[0].valueString = "Section"
* section[sectionEncounters] ^short = "Encounters sections"
* section[sectionEncounters] ^definition = "This section lists and describes any healthcare encounters pertinent to the patient’s current health status or historical health history. An encounter is an interaction, regardless of the setting, between a patient and a practitioner who is vested with primary responsibility for diagnosing, evaluating, or treating the patient’s condition. It may include visits, appointments, or non-face-to-face interactions. It is also a contact between a patient and a practitioner who has primary responsibility (exercising independent judgment) for assessing and treating the patient at a given contact.“ (from C-CDA specifications)."
* section[sectionEncounters].title 1.. MS
* section[sectionEncounters].code 1.. MS
* section[sectionEncounters].code = http://loinc.org#46240-8 (exactly)
* section[sectionEncounters].text 1.. MS
* section[sectionEncounters].entry MS
* section[sectionEncounters].emptyReason ..0
* section[sectionEncounters].emptyReason ^mustSupport = false
* section[sectionEncounters].section ..0
* section[sectionEncounters].section ^mustSupport = false
* section contains sectionAdmissionMedications ..1 MS
* section[sectionAdmissionMedications] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionAdmissionMedications] ^extension[0].valueString = "Section"
* section[sectionAdmissionMedications] ^short = "Admission Medications"
* section[sectionAdmissionMedications].title 1.. MS
* section[sectionAdmissionMedications].code 1.. MS
* section[sectionAdmissionMedications].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionAdmissionMedications].code = http://loinc.org#42346-7 (exactly)
* section[sectionAdmissionMedications].text 1.. MS
* section[sectionAdmissionMedications].entry MS
* section[sectionAdmissionMedications].emptyReason ..0
* section[sectionAdmissionMedications].emptyReason ^mustSupport = false
* section[sectionAdmissionMedications].section ..0
* section[sectionAdmissionMedications].section ^mustSupport = false
* section contains sectionHospitalCourse ..1 MS
* section[sectionHospitalCourse] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionHospitalCourse] ^extension[0].valueString = "Section"
* section[sectionHospitalCourse] ^short = "Hospital course"
* section[sectionHospitalCourse] ^definition = "Hospital course describes the sequence of events from admission to discharge in a hospital facility."
* section[sectionHospitalCourse].code 1.. MS
* section[sectionHospitalCourse].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionHospitalCourse].code = http://loinc.org#8648-8 (exactly)
* section[sectionHospitalCourse].text 1.. MS
* section[sectionHospitalCourse].section ..0
* section[sectionHospitalCourse].section ^mustSupport = false
* section contains sectionProcedure ..1 MS
* section[sectionProcedure] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProcedure] ^extension[0].valueString = "Section"
* section[sectionProcedure].code 1.. MS
* section[sectionProcedure].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionProcedure].code = http://loinc.org#29554-3 (exactly)
* section[sectionProcedure].text 1.. MS
* section[sectionProcedure].entry MS
* section[sectionProcedure].emptyReason ..0
* section[sectionProcedure].emptyReason ^mustSupport = false
* section[sectionProcedure].section ..0
* section[sectionProcedure].section ^mustSupport = false
* section contains sectionMedicationsAdministered ..1 MS
* section[sectionMedicationsAdministered] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMedicationsAdministered] ^extension[0].valueString = "Section"
* section[sectionMedicationsAdministered] ^short = "Admission Medications"
* section[sectionMedicationsAdministered].title 1.. MS
* section[sectionMedicationsAdministered].code 1.. MS
* section[sectionMedicationsAdministered].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionMedicationsAdministered].code = http://loinc.org#29549-3 (exactly)
* section[sectionMedicationsAdministered].text 1.. MS
* section[sectionMedicationsAdministered].entry MS
* section[sectionMedicationsAdministered].emptyReason ..0
* section[sectionMedicationsAdministered].emptyReason ^mustSupport = false
* section[sectionMedicationsAdministered].section ..0
* section[sectionMedicationsAdministered].section ^mustSupport = false
* section contains sectionDischargeMedications ..1 MS
* section[sectionDischargeMedications] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionDischargeMedications] ^extension[0].valueString = "Section"
* section[sectionDischargeMedications] ^short = "Admission Medications"
* section[sectionDischargeMedications].title 1.. MS
* section[sectionDischargeMedications].code 1.. MS
* section[sectionDischargeMedications].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionDischargeMedications].code = http://loinc.org#42346-7 (exactly)
* section[sectionDischargeMedications].text 1.. MS
* section[sectionDischargeMedications].entry MS
* section[sectionDischargeMedications].emptyReason ..0
* section[sectionDischargeMedications].emptyReason ^mustSupport = false
* section[sectionDischargeMedications].section ..0
* section[sectionDischargeMedications].section ^mustSupport = false