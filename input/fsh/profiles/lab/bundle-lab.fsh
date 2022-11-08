Profile: BundleLabReportXeh
Parent: Bundle
Id: Bundle-lab-xeh
Title: "Bundle: Laboratory Report"
Description: "Clinical document used to represent a Laboratory Report for the scope of the Xehealth project."
* ^publisher = "X-eHealth Project"
* ^copyright = "X-eHealth Project"
* . ^short = "Laboratory Report bundle"
* . ^definition = "Laboratory Report bundle."
* identifier ^short = "Business identifier for this Laboratory Report"
* type = #document
* timestamp 1..
* total ..0
* link ..0
* entry 1..
  * link ..0
  * fullUrl 1..1
  * resource 1..
  * search ..0
  * request ..0
  * response ..0
* signature ^short = "Digital Signature of this report"

* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "$this.resolve()"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry contains composition 1..1
* entry[composition].resource only CompositionLabReportXeh

* entry contains diagnosticReport 0..1
* entry[diagnosticReport].resource only DiagnosticReportLabXeh

* entry contains patient 0..1
* entry[patient].resource only PatientXeh

* entry contains observation 0..*
* entry[observation].resource only Observation // Add profiles

* entry contains specimen 0..*
* entry[specimen].resource only Specimen // Add profiles

* entry contains serviceRequest 0..*
* entry[serviceRequest].resource only ServiceRequestLabXeh // Add profiles

* entry contains requestGroup 0..1
* entry[requestGroup].resource only RequestGroupLabXeh // Add profiles