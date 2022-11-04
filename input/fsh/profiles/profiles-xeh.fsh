
//====== Profiles =====================================


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  OrganizationCareProviderXeh
Parent:   $Organization-uv-ips
Id:       Organization-careprovider-eu-xeh
Title:    "CareTeam (X-eHealth)"
Description: "This profile constrains the Organization IPS profile to represent care provisioning organanizations (as RD centers) for the purpose of the X-eHealth project."
//-------------------------------------------------------------------------------------------

* type MS
* telecom MS
* address MS
* partOf ^short = "The organization of which this organization is part of: e.g. an ERN"
* partOf only Reference (OrganizationCareProviderXeh or Organization)
* contact MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CareTeamXeh
Parent:   CareTeam
Id:       CareTeam-eu-xeh
Title:    "CareTeam (X-eHealth)"
Description: "This profile constrains the CareTeam resource for the purpose of the X-eHealth project."
//-------------------------------------------------------------------------------------------

* subject only Reference(PatientXeh)
* subject MS
* participant 1.. MS
* participant.role MS
* participant.member 1.. MS
* participant.member only Reference (Practitioner or PractitionerRole or RelatedPerson or OrganizationCareProviderXeh or CareTeamXeh)
* reasonCode ^short = "Problem this team is in charge of"
* reasonReference only Reference(ConditionXeh)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationStatementXeh
Parent:   $MedicationStatement-uv-ips
Id:       MedicationStatement-eu-xeh
Title:    "MedicationStatement (X-eHealth)"
Description: "This profile constrains the MedicationStatement IPS FHIR profile for the purpose of the X-eHealth project."
//-------------------------------------------------------------------------------------------

* reasonCode ^short = "Reason (e.g. the Rare Disease) for why the medication is being/was taken"
* reasonReference only Reference(ConditionXeh or Observation or DiagnosticReport)
* subject only Reference(PatientXeh)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  FlagXeh
Parent:   Flag
Id:       Flag-eu-xeh
Title:    "Flag (X-eHealth)"
Description: "This profile constrains the Flag resource to represent alerts or warnings in FHIR for the purpose of the X-eHealth project."
//-------------------------------------------------------------------------------------------

* extension contains $flag-detail named $flagDetailExt 0..*
* extension contains $flag-priority named $flagPriorityExt 0..*
* status MS
* code MS
* subject MS
* subject only Reference(PatientXeh)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ConditionXeh
Parent:   $Condition-uv-ips
Id:       Condition-eu-xeh
Title:    "Condition (X-eHealth)"
Description: "This profile defines how to represent Condition in FHIR for the purpose of the X-eHealth project."

//-------------------------------------------------------------------------------------------

* extension contains $bodySite named bodySiteExt 0..*
* identifier ^definition = "Globally unique identifier of this problem which remain constant as the resource is updated and propagates from server to server."
* recordedDate ^definition = "Date (and time) when this problem was recorded into information system."
* severity MS
* severity ^definition = "A subjective assessment of the severity of the condition as evaluated by the clinician."
* recorder ^definition = "A healthcare professional who authored information about the problem."
* category ^definition = "The type of problem; see the concept description."
* code ^definition = "The problem code specifies the problem. Depending on the setting, different code systems can be used. The ProblemCodelist provides an overview of the possible code systems."
* text ^definition = "Human readable specification of the problem. This is a general notes/comments entry for description of the problem, its diagnosis and prognosis."
* onsetDateTime ^definition = "Onset of the symptom, complaint, functional limitation, complication or date of diagnosis. A ‘vague’ date, such as only the year or the month and the year, is permitted."
* abatementDateTime ^definition = "The date or estimated date that the condition resolved or went into remission. A ‘vague’ date, such as only the year or the month and the year, is permitted"
* clinicalStatus ^definition = "The problem status describes the condition of the problem:\n\r 
1.	Active problems are problems of which the patient experiences symptoms or for which evidence exists.\n\r  
2.	If condition is abated, then clinicalStatus must be either inactive, resolved, or remission. \n\r 
3.	Problems with the status 'Inactive' refer to problems that don't affect the patient anymore or that of which there is no evidence of existence anymore."
* verificationStatus ^definition = "The verification status to support the clinical status of the condition."
* note ^definition = "Comment by the one who determined or updated the Problem." 
* bodySite  ^definition = "Anatomical location which is the focus of the problem."





//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PatientXeh
Parent:   $Patient-uv-ips
Id:       Patient-eu-xeh
Title:    "Patient (X-eHealth)"
Description: "This profile defines how to represent Patient in FHIR for the purpose of the X-eHealth project."

//-------------------------------------------------------------------------------------------
* ^description = "Information about an individual receiving health care services"

/* //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  DiagnosticReportXeh
Parent:   $DiagnosticReport-uv-ips
Id:       DiagnosticReport-eu-xeh
Title:    "DiagnosticReport (X-eHealth)"
Description: "This profile defines how to represent Patients in FHIR for the purpose of the X-eHealth project."

//-------------------------------------------------------------------------------------------
* ^description = "This profile constrains the DiagnosticReport resource to represent diagnostic test and procedure reports in a X-eHealth Project"
* subject only Reference(PatientXeh or Group) 
* performer only Reference(PractitionerXeh or PractitionerRoleXeh or OrganizationCareProviderXeh or CareTeamXeh)
* result[observation-results] only Reference(ObservationResultsLaboratoryXeh or ObservationResultsPathologyXeh or ObservationResultsRadiologyXeh or ObservationResultsXeh) */

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationResultsXeh
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips
Id:       Observation-results-eu-xeh
Title:    "Observation Results: laboratory (X-eHealth)"
Description: "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary. This is the base profile from which the other results profiles are derived."
//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationResultsLaboratoryXeh
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips
Id:       Observation-results-laboratory-eu-xeh
Title:    "Observation Results: laboratory (X-eHealth)"
Description: "This profile constrains the Observation resource to represent results produced by laboratory tests or panels/studies for the X-eHealth project."
//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationResultsPathologyXeh
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-pathology-uv-ips
Id:       Observation-results-pathology-eu-xeh
Title:    "Observation Results: pathology (X-eHealth)"
Description: "This profile constrains the Observation resource to represent results produced by pathology studies for the X-eHealth project."
//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationResultsRadiologyXeh
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips
Id:       Observation-results-radiology-eu-xeh
Title:    "Observation Results: radiology (X-eHealth)"
Description: "This profile constrains the Observation resource to represent results produced by pathology studies for the X-eHealth project."
//-------------------------------------------------------------------------------------------


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerXeh
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Id:       Practitioner-eu-xeh
Title:    "Practitioner (X-eHealth)"
Description: "This profile defines how to represent Practitioners in FHIR for the purpose of the X-eHealth project."

//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerRoleXeh
Parent:   http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips
Id:       PractitionerRole-eu-xeh
Title:    "PractitionerRole (X-eHealth)"
Description: "This profile defines how to represent Practitioners (with thier roles) in FHIR for the purpose of the X-eHealth project."

//-------------------------------------------------------------------------------------------
