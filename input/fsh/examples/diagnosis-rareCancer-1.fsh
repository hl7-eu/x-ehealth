RuleSet: ConditionGist

* extension[0].url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* extension[=].valueDateTime = "2021"
* extension[+].url = $mcode-histology-morphology-behavior
* extension[=].valueCodeableConcept = $icd03#8936 "Gastrointestinal stromal tumor"

/* whcih is the right one ?
8936/0 Gastrointestinal stromal tumor, benign
8936/1 Gastrointestinal stromal tumor, NOS
     Gastrointestinal stromal tumor, uncertain malignant potential
8936/3 Gastrointestinal stromal sarcoma */

* code.coding[+] = $iccc3#108 "Gastrointestinal stromal tumor"
* code.coding[+] = $sct#420120006 "Gastrointestinal stromal tumor"
* code.coding[+] = $icd03#8936 "Gastrointestinal stromal tumor"
* code.text = "diagnosis of gastric GIST"

* bodySite = $icd03#C16 "Stomach"

/* 
* bodySite.extension.url = "http://hl7.eu/fhir/ig/pcsp/StructureDefinition/mcode-laterality-qualifier"
* bodySite.extension.valueCodeableConcept = $v3-NullFlavor#NA "Not Applicable"  

* stage.summary = $v3-NullFlavor#UNC "un-encoded"
* stage.summary.text = "pT1a"
*/

* subject = Reference(urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e9)
* encounter = Reference(urn:uuid:2b26ce51-5ba7-40b9-bcc8-90519510cbcc)
* encounter.type = "Encounter"

* note.text = "diagnosis of gastric GIST, size = 9 cm, MI = 9/50HPF, exon 11 KIT mutated, CT scan = negative elsewhere"

// === Condition

Instance: Inline-Condition-02-1
InstanceOf: ConditionPrimaryCancerXeH
Usage: #inline

* id = "8e280fc4-7e66-40d6-9c03-7ae0d4e9374d"
* insert ConditionGist

// === Condition

Instance: Condition-Gist-1
InstanceOf: ConditionPrimaryCancerXeH
Title:   "Condition: Primary Diagnosis GIST"
Description: "Sample of Primary Diagnosis GIST"
Usage: #example

* insert ConditionGist

// ===================== Organization
Instance: Inline-Organization-02-1
InstanceOf: OrganizationCenterXeH
Title:   "Organization: Primary Diagnosis Hulafe (Organization)"
Description: "Sample of Primary Diagnosis based on information provided by Hulafe (Organization)"
Usage: #inline

* id = "45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fe7"
* active = true
* name = "Hospital Universitari i Politècnic La Fe"
* alias = "La Fe"
* telecom[+].system = #phone
* telecom[=].value = "+34 961 244 000"
* telecom[+].system = #email
* telecom[=].value = "prensa_lafe@gva.es"
* address.type = #both
* address.use = #work
* address.line = "Avinguda de Fernando Abril Martorell, nº 106"
* address.city = "Valencia"
* address.state = "Comunidad Valenciana"
* address.postalCode = "46026"
* address.country = "ES"

// ===================== Encounter
Instance: Inline-Encounter-02-1
InstanceOf: Encounter
Title:   "Encounter: Primary Diagnosis Hulafe (Encounter)"
Description: "Sample of Primary Diagnosis based on information provided by Hulafe (Encounter)"
Usage: #inline

* id = "b2333049-c7c5-487c-b0fd-1b713fccc034"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e9)
* serviceProvider = Reference(urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fe7)
* serviceProvider.type = "Organization"
