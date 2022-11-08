Invariant: bdl-xeh-1
Description: "An SarPass document must have no additional Composition (including Composition subclass) resources besides the first."
Severity: #error
Expression: "entry.tail().where(resource is Composition).empty()"

//===================================
Profile: BundleXeh
Parent: Bundle
Id: Bundle-eu-xeh
Title: "Bundle: Cancer Summary"
Description: "This profile represents the constraints applied to the Bundle resource by the Xeh FHIR Implementation Guide."
//===================================

* obeys bdl-xeh-1
* . ^short = "Cancer Summary Bundle"
* . ^definition = "Cancer Summary Bundle. \r\nA container for a collection of resources in the patient summary document."
* identifier 1.. 
* type = #document (exactly)
* timestamp 1.. 
* link ..0
* entry 1.. 
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the Cancer Summary bundle"
* entry ^definition = "An entry resource included in the surpass document bundle resource. "
* entry ^comment = "Must contain the Xeh Composition as the first entry (only a single Composition resource instance may be included).  Additional constraints are specified in the Xeh Composition profile."
* entry.fullUrl 1..
* entry.resource 1..
* entry.search ..0
* entry.request ..0
* entry.response ..0
* entry contains
    composition 1..1 and
    patient 1..1 and
	primaryCancer 1..* and
	flt 0..* and
	location 0..* and
	organization 0..* and
    chemotherapy 0..* and
    stemCellTransplantation  0..* and
    radiotherapy			  0..* and
    majorSurgery			  0..* and
	carePlan 0..* 

* entry[composition].resource only CompositionSurpassXeh
* entry[patient].resource only PatientXeh
* entry[primaryCancer].resource only ConditionPrimaryCancerXeh
/* * entry[flt].resource only PlanDefinitionFltXeh
* entry[location].resource only LocationXeh
* entry[organization].resource only OrganizationCenterXeh or Organization
* entry[chemotherapy].resource only MedicationAdministrationXeh
* entry[stemCellTransplantation].resource  only ProcedureSctXeh
* entry[radiotherapy].resource	only ProcedureRadiotherapyXeh or ProcedureRadiotherapyBoostXeh
* entry[majorSurgery].resource	only ProcedureSurgeryXeh
* entry[carePlan].resource only CarePlanXeh
 */