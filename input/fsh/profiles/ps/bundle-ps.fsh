Profile: BundlePsXeh
Parent: $Bundle-uv-ips
Id: Bundle-ps-xeh
Title: "Bundle: EU Patient Summary"
Description: "Clinical document used to represent a PS for the scope of the Xehealth project."
* ^publisher = "X-eHealth Project"
* ^copyright = "X-eHealth Project"
* . ^short = "Patient Summary bundle"
* . ^definition = "Patient Summary bundle."

* entry[composition].resource 1..
* entry[composition].resource only CompositionPsXehealth
* entry[patient].resource 1..
* entry[patient].resource only PatientXeh

/* * entry[allergyintolerance].resource 1..
* entry[allergyintolerance].resource only $AllergyIntolerance-uv-ips
* entry[condition].resource 1..
* entry[condition].resource only $Condition-uv-ips
* entry[device].resource 1..
* entry[device].resource only Device
* entry[deviceusestatement].resource 1..
* entry[deviceusestatement].resource only $DeviceUseStatement-uv-ips
* entry[diagnosticreport].resource 1..
* entry[diagnosticreport].resource only $DiagnosticReport-uv-ips
* entry[imagingstudy].resource 1..
* entry[imagingstudy].resource only $ImagingStudy-uv-ips
* entry[immunization].resource 1..
* entry[immunization].resource only $Immunization-uv-ips
* entry[media].resource 1..
* entry[media].resource only $Media-observation-uv-ips
* entry[medication].resource 1..
* entry[medication].resource only $Medication-uv-ips
* entry[medicationrequest].resource 1..
* entry[medicationrequest].resource only $MedicationRequest-uv-ips
* entry[medicationstatement].resource 1..
* entry[medicationstatement].resource only $MedicationStatement-uv-ips
* entry[practitioner].resource 1..
* entry[practitioner].resource only $Practitioner-uv-ips
* entry[practitionerrole].resource 1..
* entry[practitionerrole].resource only $PractitionerRole-uv-ips
* entry[procedure].resource 1..
* entry[procedure].resource only $Procedure-uv-ips
* entry[organization].resource 1..
* entry[organization].resource only $Organization-uv-ips
* entry[observation-pregnancy-edd].resource 1..
* entry[observation-pregnancy-edd].resource only $Observation-pregnancy-edd-uv-ips
* entry[observation-pregnancy-outcome].resource 1..
* entry[observation-pregnancy-outcome].resource only $Observation-pregnancy-outcome-uv-ips
* entry[observation-pregnancy-status].resource 1..
* entry[observation-pregnancy-status].resource only $Observation-pregnancy-status-uv-ips
* entry[observation-alcohol-use].resource 1..
* entry[observation-alcohol-use].resource only $Observation-alcoholuse-uv-ips
* entry[observation-tobacco-use].resource 1..
* entry[observation-tobacco-use].resource only $Observation-tobaccouse-uv-ips
* entry[observation-results].resource 1..
* entry[observation-results].resource only $Observation-results-uv-ips
* entry[specimen].resource 1..
* entry[specimen].resource only $Specimen-uv-ips */
