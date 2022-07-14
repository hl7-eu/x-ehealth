
//====== RuleSet =====================================

RuleSet: OrderCommonRules
* ^publisher = "X-eHealth Project"
* ^copyright = "X-eHealth Project"
* identifier 1..
* category 1.. 
* code 1..
* subject 1..


Profile: ServiceRequestLabXeH
Parent: ServiceRequest
Id: ServiceRequest-lab-xeh
Title: "ServiceRequest: Laboratory Order"
Description: "ServiceRequest used to represent a Laboratory Order for the scope of the XeHealth project."
* insert OrderCommonRules
// Clarify when to use ServiceRequest and RequestGroup
* . ^short = "Laboratory Order"
* . ^definition = "Laboratory Order composition."
// add binding for category and code
* specimen	only Reference(Specimen)
  * ^short = "Must be present, if order is request for test" // Check....
  // add invariant ?


Profile: RequestGroupLabXeH
Parent: RequestGroup
Id: RequestGroup-lab-xeh
Title: "RequestGroup: Laboratory Order"
Description: "RequestGroup used to represent a Laboratory Order for the scope of the XeHealth project."
* ^publisher = "X-eHealth Project"
* ^copyright = "X-eHealth Project"
* identifier 1..
* groupIdentifier 1.. 
* subject 1..
* code 1..
// Clarify when to use ServiceRequest and RequestGroup
// add binding for code
* . ^short = "Laboratory Order"
* . ^definition = "Laboratory Order composition."