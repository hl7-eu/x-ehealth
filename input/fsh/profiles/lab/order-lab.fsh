
//====== RuleSet =====================================

/* RuleSet: OrderCommonRules
* ^publisher = "X-eHealth Project"
* ^copyright = "X-eHealth Project"
* identifier 1..
* category 1.. 
* code 1..
* subject 1.. */


Profile: ServiceRequestLabXeh
Parent: ServiceRequest
Id: ServiceRequest-lab-xeh
Title: "ServiceRequest: Laboratory Order"
Description: "ServiceRequest used to represent a Laboratory Order for the scope of the Xehealth project."


// Clarify when to use ServiceRequest and RequestGroup
* . ^short = "Laboratory Order"
* . ^definition = "Laboratory Order composition."
// add binding for category and code
* identifier 1..
* category 1.. 
* code 1..
* subject 1..
* subject only Reference (PatientXeh or Patient or Group or Location or Device)
* requisition ^short = "Composite Request ID." 
* specimen	only Reference (Specimen)
  * ^short = "Must be present, if order is request for test" // Check....
  // add invariant ?
* insurance only Reference (Coverage)
