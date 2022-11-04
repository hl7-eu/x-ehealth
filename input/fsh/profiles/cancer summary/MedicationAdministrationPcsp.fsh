//====== RuleSet =====================================

RuleSet: MedicationAdministrationXehRules
* extension contains 
		ResourceRelatedInfo named relatedCumulativeDose 0..1 
		and EventLocation named location 0..1
* extension[relatedCumulativeDose].valueReference only Reference(CumulativeDoseChemoObsXeh)
* extension[location].valueReference only Reference(LocationXeh)
* status MS
* subject 1..
* subject only Reference(PatientXeh)
* medicationCodeableConcept from VsXehAtcCodes (extensible)
* medicationCodeableConcept 1..1 MS
* reasonReference 1..1 // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerXeh)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CumulativeDoseChemoObsXeh
Parent:   Observation
Id:       Observation-cumulativeDoseChemo-eu-xeh
Title:    "Observation: Chemotherapy Cumulative Dose"
Description: "This profile defines how to represent Chemotherapy Cumulative Dose in FHIR for the purpose of the X-eHealth project."
//-------------------------------------------------------------------------------------------
* insert CumulativeDoseObsRules
* extension contains $event-statusReason named statusReason 0..1
* extension[statusReason]
* category MS
* category = $observation-category#procedure  // to be checked
* status ^short = "Completion status"
* code MS
* code = CsGenericXeh#cumulativeDose //  local code
* value[x] 1..1 MS
* valueQuantity 0.. 
  * ^short = "Chemotherapy Cumulative Dose"
  * code from ChemoUnitsVs
* dataAbsentReason ^short = "Not calculated or not known dose"
* dataAbsentReason from NotPerformedUnknownVs
* method from CalculatedEstimatedVs



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationAdministrationXeh
Parent:   MedicationAdministration 
Id:       MedicationAdministration-eu-xeh
Title:    "MedicationAdministration Xeh"
Description: "This profile defines how to represent MedicationAdministration in FHIR for describing Chemotherapy data for the purpose of the X-eHealth project."
//-------------------------------------------------------------------------------------------

* insert MedicationAdministrationXehRules

/*=== REMOVED NOT PRESENT IN THE LOGICAL MODEL MAPPING 
* extension contains $workflow-supportingInfo named supportingInfo 0..*
* extension[supportingInfo] 0..*
* extension[supportingInfo].valueReference only Reference(DocumentReference)
==== */
* effective[x] ^short = "When the chemotherapy was administered"
* effectivePeriod MS
* dosage.dose 
  * ^short = "Amount per dose"
  * value 1.. MS
  * system 1.. MS
  * system = $ucum
  * code 1.. MS 
  * unit MS 

/* //++++++++++++++++++++++++++ FIND An ALTERNATIVE NAME++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationStatementXeh
Parent:   MedicationStatement 
Id:       MedicationStatement-eu-xeh
Title:    "MedicationStatement Xeh"
Description: "This profile defines how to represent MedicationStatement in FHIR for describing minimal information about provided medications for the purpose of the X-eHealth project."
//-------------------------------------------------------------------------------------------
* status ^short = "active | completed | entered-in-error | intended | stopped | on-hold | unknown |not-taken"

* status 
  * ^example.valueCode = #completed
  * ^example.label = "general"
  
* medicationCodeableConcept
  * ^example.valueCodeableConcept = $atc#H02 "CORTICOSTEROIDS FOR SYSTEMIC USE"
  * ^example.label = "general"

* reasonReference MS
* reasonReference ^short = "Required if related to chemotherapy treatments"
* reasonReference only Reference(ConditionPrimaryCancerXeh)

// add a slice for category H02 CORTICOSTEROIDS FOR SYSTEMIC USE

* dosage.route
  * ^example.valueCodeableConcept = $edqm#20042000 "Intrathecal use"
  * ^example.label = "general"
  
// 20042000 edqm Intrathecal use
* dosage.timing.repeat.count ^short = "Number of administration"
* dosage.timing.repeat.boundsDuration ^short = "Length/Range of lengths, or (Start and/or end) limits." */

/*==== BEGIN 
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationAdministrationMinXeh
Parent:   MedicationAdministration 
Id:       MedicationAdministration-min-eu-xeh
Title:    "MedicationAdministration (Xeh Minimal Set)"
Description: "This profile defines how to represent MedicationAdministration in FHIR for describing a Minimal set of Chemotherapy data required by the X-eHealth algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------
* insert MedicationAdministrationXehRules

==== END */