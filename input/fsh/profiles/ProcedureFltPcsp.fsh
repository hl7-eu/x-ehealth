
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureFltXeh
Parent:   Procedure 
Id:       Procedure-flt-eu-xeh
Title:    "Procedure: Front Line Treatment"
Description: "This profile defines how to provide Front Line Treatment data in FHIR for the scope of the X-eHealth project."
//-------------------------------------------------------------------------------------------


* extension contains FltArm named fltArm 0..1
* extension[fltArm] ^short = "Randomization arm description"
* identifier ^short = "External Identifiers for this FLT"
* instantiatesCanonical 1..
* instantiatesCanonical only Canonical(PlanDefinitionFltXeh) 
* status
  * ^example.label = "Completed"
  * ^example.valueCode = #completed
* category 1..
* category = $sct#708255002 "First line treatment"  // check if in  GPS
// add slice on coding to allow more precise data
* subject only Reference(PatientXeh)	
* subject 1..
* performedPeriod 0.. 
* reasonReference 1..  // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerXeh)
* outcome
  * coding ^short = "Complete remission (Yes/No)"
  * coding from $vs-condition-clinical (extensible)
  * text ^short = "Textual description in case of no remission"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PlanDefinitionFltXeh
Parent:   PlanDefinition 
Id:       PlanDefinition-flt-eu-xeh
Title:    "PlanDefinition: Front Line Treatment"
Description: "This profile defines how to provide Front Line Treatment protocol infos in FHIR for the scope of the X-eHealth project."
//-------------------------------------------------------------------------------------------

* type from FltPlanType
* name ^short = "Name for this FLT plan (computer friendly)"
* title ^short = "Name for this FLT plan (human friendly)"
* description ^short = "description of the FLT plan"
