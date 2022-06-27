Instance: listLaboratory
InstanceOf: List
Title: "Profiles used for the Laboratory domain"
Description: "Profiles used for the Laboratory domain"
Usage: #example

* status = #current
* mode = #working
* entry[+].item = Reference(BundleLabReportXeH)
* entry[+].item = Reference(CompositionLabReportXeH)
* entry[+].item = Reference(DiagnosticReportLabXeH)
* entry[+].item = Reference(PatientXeh)
* entry[+].item = Reference(ServiceRequestLabXeH)
* entry[+].item = Reference(RequestGroupLabXeH)
