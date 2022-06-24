//============== ALIAS ===============
Alias: ips_DiagnosticReport = http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips
Alias: ips_Patient = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $Condition-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
Alias: $bodySite = http://hl7.org/fhir/StructureDefinition/bodySite
Alias: $flag-detail = http://hl7.org/fhir/StructureDefinition/flag-detail
Alias: $flag-priority = http://hl7.org/fhir/StructureDefinition/flag-priority
Alias: $MedicationStatement-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips
Alias: $Organization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips
//=========================

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
Parent:   ips_Patient
Id:       Patient-eu-xeh
Title:    "Patient (X-eHealth)"
Description: "This profile defines how to represent Patient in FHIR for the purpose of the X-eHealth project."

//-------------------------------------------------------------------------------------------
* ^description = "Information about an individual receiving health care services"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  DiagnosticReportXeh
Parent:   ips_DiagnosticReport
Id:       DiagnosticReport-eu-xeh
Title:    "DiagnosticReport (X-eHealth)"
Description: "This profile defines how to represent Patients in FHIR for the purpose of the X-eHealth project."

//-------------------------------------------------------------------------------------------
* ^description = "This profile constrains the DiagnosticReport resource to represent diagnostic test and procedure reports in a X-eHealth Project"
* subject only Reference(PatientXeh or Group) 
* performer only Reference(PractitionerXeh or PractitionerRoleXeh or OrganizationCareProviderXeh or CareTeamXeh)
* result[observation-results] only Reference(ObservationResultsLaboratoryXeh or ObservationResultsPathologyXeh or ObservationResultsRadiologyXeh or ObservationResultsXeh)

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
 

//============ Extensions

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Extension: Conformance
Parent: http://hl7.org/fhir/StructureDefinition/Extension
Id: conformance-cen-ips
Title: "Conformance attribute"
Description: "This attribute captures the level of requirement (mandatory, required, required if known, optional, conditional) for each specified element"
//-------------------------------------------------------------------------------------------
* ^status = #draft
* ^abstract = true
* ^context[0].type = #element
* ^context[0].expression = "ElementDefinition"
* . ^short = "Conformance"
* . ^definition = "The element shall assume one of the following values: \r\n\r\nM ; Mandatory (exceptions not allowed); A mandatory element shall always be present and - where applicable - shall be valorised with valid values. No exceptions or empty/null values are allowed in this case.\r\nIf it refers to a composite element (e.g. a section, a list; a label concept) the presence of the included elements is determined by the conformance rules of these sub-elements.\r\nRecipient shall understand mandatory elements.\r\nIf a ‘mandatory’ element is missing then the document is no longer a conformant IPS.\r\nA derived model (that includes also implementable specifications) shall maintain an equivalent conformance strength.\r\n\r\nR ; Required (exceptions allowed);  A required element shall always be present and - where applicable - should be valorised with valid values. Exceptions or empty/null values are allowed in this case.\r\nIf it refers to a composite element (e.g. a section, a list; a label concept a complex data type) the presence of the included elements is determined by the conformance rules of these sub-elements.\r\nRecipient shall understand required elements.\r\nIf a ‘required’ element is missing then the document is no longer a conformant IPS.\r\nA derived model (that includes also implementable specifications) shall maintain an equivalent conformance strength; or may further constrain it (e.g. from ‘R’ to ‘M’).\r\n\r\nRK ; Required, if known; A “Required if known” element is one that should be provided.\r\nIf there is information available, the element must be present and - where applicable - valorised with valid values.\r\nIf there is no information available, the element may be omitted, may be left empty, or may be valorised with exceptional or null values depending on the implementation.\r\nIf it refers to a composite element (e.g. a section, a list, a label concept, a complex data type) the presence of the included elements is determined by the conformance rules of these sub-elements.\r\nRecipient shall understand required elements.\r\nA derived model (that includes also implementable specifications) shall maintain an equivalent conformance strength; or may further constrain it (e.g. from ‘RK’ to ‘R’).\r\n\r\nC; Conditional (has associated condition predicates); Depending on predicate conditions the element may assume different conformance strengths (e.g. O, R, RK) or not being present.\r\nA predicate can be simple (for example: «element A exists»; «attribute b = value1») or complex (for example: «element C exists» AND «the attribute x of element D = value2).\r\nA conditional element may be evaluated on a single condition (if predicate A then ‘Required’ else ‘Optional’) or on multiple conditions (e.g. if predicate A then ‘Required’; if predicate B then ‘Optional’; else ‘Not Present’).\r\nThe resulting conformance strength (M, R, RK, O, ...) is determined by the conditions.\r\nIf it refers to a composite element (e.g. a section, a list, a label concept, a complex data type) the presence of the included elements is determined by the combination of the predicate conditions of this element and the conformance rules of its sub-elements. For example:\r\n1. no exception is raised if a required sub-element is missing, when the parent is correctly omitted.\r\n2. an exception is raised if a required sub-element is missing, when the parent is present.\r\nDerived models or implementable specifications shall maintain an equivalent conformance strength; but it is allowed to modify the conformance strength if the predicate condition permits.\r\nRecipient shall understand conditional elements, when required. For example, a conditional element that could be optional or not present could be omitted by a derived model and ignored by a recipient. Or, a condition for which a conditional element become required doesn’t apply to a jurisdiction, in that case a jurisdictional specification could omit that element and recipient could ignore it.\r\nDepending on the conditions, exception is or is not raised if the data are missing.\r\n\r\nO; Optional ; This data element can be omitted from a derived model, including from implementations.\r\nRecipient may ignore optional elements.\r\nIf it refers to a composite element (e.g. a section, a list, a label concept, a complex data type) the presence of the included elements is determined by the presence of this element and the conformance rules of its sub-elements. For example, no exception is raised if a required sub-element is missing, when the parent is omitted.\r\nThe reason for specifying the optional data elements is to ensure that both sender and recipient use the appropriate semantic interpretation of these elements.\r\nNo exception is raised if the data are missing."
* . ^alias[0] = "Conformance"
* value[x] only code
* value[x] from http://hl7.eu/fhir/ig/xeh/ValueSet/conformance-cen-ips (required)
