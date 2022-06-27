Profile: DiagnosticReportLabXeH
Parent: DiagnosticReport
Id: DiagnosticReport-lab-xeh
Title: "DiagnosticReport: Laboratory Report (XeH)"
Description: "CDiagnosticReport used to represent an entry of a Laboratory Report, including its context, for the scope of the XeHealth project."
* ^publisher = "X-eHealth Project"
* ^copyright = "X-eHealth Project"
* . ^short = "Laboratory Report DiagnosticReport"
* . ^definition = "Laboratory Report DiagnosticReport"


// add a reference also tot he RequestGroup to enable the retrievale of all the DiagnosticReports associated with a RequestGroup ?

/*
content to be referred...
Specimen Collection 1.3.6.1.4.1.19376.1.3.1.2
Specimen Received 1.3.6.1.4.1.19376.1.3.1.3
Specimen Site 1.3.6.1.4.1.19376.1.3.1.8
Notification Organizer
Notifiable Condition
Case Identifier
Outbreak Identifier
Laboratory Isolate Organizer
Laboratory Battery Organizer
Laboratory Observation
Mutimedia Embedded Content
Annotation Comment
*/

* basedOn only Reference ( ServiceRequestLabXeH )
* status ^short = "Status of this report"
* category 1.. // 1.. ?
* code from LabStudyTypesXeH (preferred) 
* code 1..
* subject 1..
* encounter only Reference (EncounterXeH) // profile defined for other scopes to be checked
* effective[x] ^short = "Clinically relevant time/time-period for report."
* performer ^short = "Responsible Diagnostic Service." // add reference to the used profiles
* specimen ^short = "Specimens this report is based on." // add reference to the used profile
* result ^short = "results" // add reference to the used profiles
* imagingStudy 0..0
