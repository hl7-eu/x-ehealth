
//====== RuleSet =====================================

RuleSet: CumulativeDoseObsRules
* status MS
* category 0.. MS
* code MS
* subject 1.. MS
* subject only Reference(PatientXeh)
* specimen 0..
* value[x] 1.. MS
* value[x] only Quantity or CodeableConcept
* valueQuantity MS
* valueQuantity.value 1.. MS
* valueQuantity.system 1.. MS
* valueQuantity.system = $ucum
* valueQuantity.code 1.. MS 
* valueQuantity.unit MS 
* valueCodeableConcept = $data-absent-reason#unknown "Unknown" 
* component 0..

//====== Profiles =====================================



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  LocationXeh
Parent:   Location
Id:       Location-eu-xeh
Title:    "Location X-eHealth"
Description: "This profile defines how to represent FHIR Location for the purpose of the PanCareSurPass project."
//-------------------------------------------------------------------------------------------

* name 1.. MS
* name ^short = "Name of the Institution"
* description ^short = "Institution description"
* address.city ^short = "Institution city"
* address.country ^short = "Institution country"
