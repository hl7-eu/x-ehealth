Profile: ObservationResultsXeh
Parent: Observation
Id: Observation-results-xeh
Title:    "Observation Results (X-eHealth)"
Description: "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary. This is the base profile from which the other results profiles are derived."
* ^experimental = false
* ^purpose = "This profile constrains the Observation resource to represent various types of results and associated observations in a patient summary."
* status = #final (exactly)
* category only $CodeableConcept-uv-ips
* code only $CodeableConcept-uv-ips
* code MS
* subject 1.. MS
* subject only Reference(PatientXeh or Group or Device or Location)
* subject.reference 1.. MS
* effective[x] 1.. MS
* effective[x] only dateTime or Period
* effective[x].extension contains $data-absent-reason named data-absent-reason 0..1 MS
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
* performer only Reference(PractitionerXeh or PractitionerRoleXeh or $Organization-uv-ips or CareTeam or PatientXeh or RelatedPerson)
* value[x] MS
* hasMember only Reference(ObservationResultsXeh or QuestionnaireResponse or MolecularSequence)
* component MS