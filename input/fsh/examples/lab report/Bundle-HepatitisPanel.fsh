Instance: BundleHepatitisPanel
InstanceOf: Bundle
Title: "Bundle Hepatitis Panel"
Description: "Hepatitis Panel"
Usage: #example
* identifier.system = "http://example.org"
* identifier.value = "V1CZ454557891308174803488707671420"
* type = #document
* timestamp = "2022-10-25T14:30:00+01:00"
* entry[+].fullUrl = "urn:uuid:4028a0b8-37fc-4491-a8e7-0f28e6fc59b4"
* entry[=].resource = Inline-Composition-hepatitis-panel
* entry[+].fullUrl = "urn:uuid:8472931c-fbd0-437b-9ed1-4f66472c78b5"
* entry[=].resource = Inline-Patient-hepatitis-panel
* entry[+].fullUrl = "urn:uuid:608b5309-2609-4d03-b6da-c758bfa1de70"
* entry[=].resource = Inline-Organization-hepatitis-panel
* entry[+].fullUrl = "urn:uuid:3a743273-237a-446a-a8da-9e7521cce614"
* entry[=].resource = Inline-Diag-Report-hepatitis-panel
* entry[+].fullUrl = "urn:uuid:3c9bd730-3ff9-40ee-9da1-4f3d5c526f13"
* entry[=].resource = Inline-Specimen-hepatitis-panel
* entry[+].fullUrl = "urn:uuid:435ecacf-067f-49e7-a976-d13027cec0d0"
* entry[=].resource = Inline-Observation-hepatitis-panel

Instance: Inline-Composition-hepatitis-panel
InstanceOf: Composition
Usage: #inline
* id = "4028a0b8-37fc-4491-a8e7-0f28e6fc59b4"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#11502-2 "Laboratory report"
* subject = Reference(Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5)
* date = "2022-10-25T14:30:00+01:00"
* author[0].display = "MUDr. Aleš Procházka"
* title = "Laboratory Report Hepatitis Panel - 27 Dec, 2020 14:30"
* confidentiality = #N
* attester[0].mode = #legal
* attester[0].time = "2020-12-27T14:30:00+01:00"
* attester[0].party = Reference(Organization/608b5309-2609-4d03-b6da-c758bfa1de70)
* custodian = Reference(Organization/608b5309-2609-4d03-b6da-c758bfa1de70)
* relatesTo[+].code = #transforms
* relatesTo[=].targetIdentifier.system = "urn:ietf:rfc:3986"
* relatesTo[=].targetIdentifier.value = "urn:uuid:b864303b-91ab-4e29-ad74-31a7d6566875" // Inline-Diag-Report-hepatitis-panel
* section[+].title = "Hepatitis Panel"
* section[=].code.text = "Hepatitis Panel"
* section[=].entry = Reference(Observation/435ecacf-067f-49e7-a976-d13027cec0d0) // Inline-Observation-hepatitis-panel

Instance: Inline-Patient-hepatitis-panel
InstanceOf: Patient
Usage: #inline
* id = "8472931c-fbd0-437b-9ed1-4f66472c78b5"
* identifier[0].type = $v2-0203#NIIP
* identifier[0].system = "urn:oid:1.2.203.24341.1.20.2"
* identifier[0].value = "740512852"
* identifier[1].system = "urn:oid:1.2.203.24341.1.20.9.1"
* identifier[1].value = "A225961454"
* identifier[2].type = $v2-0203#PPN
* identifier[2].system = "urn:oid:2.16.840.1.113883.4.330.203"
* identifier[2].value = "5484136"
* name[0].family = "Očkovaný"
* name[0].given[0] = "František"
* gender = #male
* birthDate = "2000-03-21"

Instance: Inline-Organization-hepatitis-panel
InstanceOf: Organization
Usage: #inline
* id = "608b5309-2609-4d03-b6da-c758bfa1de70"
* identifier[0].system = "urn:oid:1.2.203" // this is a valid OID representing the Czech Republic, though it is not being recognized as valid by the IG Publisher
* identifier[0].value = "24341"
* name = "Ministry of Health of the Czech Republic"

Instance: Inline-Diag-Report-hepatitis-panel
InstanceOf: DiagnosticReport-lab-xeh
Usage: #inline
* id = "3a743273-237a-446a-a8da-9e7521cce614"
* status = #final
* category = $diagnostic-service-sections#LAB
* code.text = "Hepatitis Panel"
* subject = Reference(Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* specimen = Reference(Specimen/3c9bd730-3ff9-40ee-9da1-4f3d5c526f13)
* result[+] = Reference(Observation/435ecacf-067f-49e7-a976-d13027cec0d0) // Inline-Observation-hepatitis-panel

Instance: Inline-Specimen-hepatitis-panel
InstanceOf: Specimen-uv-ips
Usage: #inline
* id = "3c9bd730-3ff9-40ee-9da1-4f3d5c526f13"
* status = #available
* type = $sct#119364003 "Serum specimen"
* collection.collectedDateTime = "2022-10-25T13:35:00+01:00"

Instance: Inline-Observation-hepatitis-panel
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "435ecacf-067f-49e7-a976-d13027cec0d0"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.text = "Hepatitis Panel"
* subject = Reference(Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* hasMember = Reference(Observation/104a5829-565b-46a6-85d6-36751ef79a40)
* hasMember = Reference(Observation/01b8ec35-9b20-45a4-bd41-42eeae2fd521)
* hasMember = Reference(Observation/096e27da-0768-47e4-b33c-9f1be93e1f88)
* hasMember = Reference(Observation/861e7b48-5497-410a-bed8-2cde814e09fc)

Instance: Inline-Observation-hepatitis-panel-result-1
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "104a5829-565b-46a6-85d6-36751ef79a40"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#22314-9 "Hepatitis A virus IgM Ab [Presence] in Serum"
* subject = Reference(Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#260415000 "Not detected"
* interpretation = $obs-interpretation#N "Normal"
* specimen = Reference(Specimen/3c9bd730-3ff9-40ee-9da1-4f3d5c526f13)

Instance: Inline-Observation-hepatitis-panel-result-2
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "01b8ec35-9b20-45a4-bd41-42eeae2fd521"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#5195-3 "Hepatitis B virus surface Ag [Presence] in Serum"
* subject = Reference(Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#52101004 "Present"
* interpretation = $obs-interpretation#A "Abnormal"
* specimen = Reference(Specimen/3c9bd730-3ff9-40ee-9da1-4f3d5c526f13)

Instance: Inline-Observation-hepatitis-panel-result-3
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "096e27da-0768-47e4-b33c-9f1be93e1f88"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#31204-1 "Hepatitis B virus core IgM Ab [Presence] in Serum"
* subject = Reference(Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#260415000 "Not detected"
* interpretation = $obs-interpretation#N "Normal"
* specimen = Reference(Specimen/3c9bd730-3ff9-40ee-9da1-4f3d5c526f13)

Instance: Inline-Observation-hepatitis-panel-result-4
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "861e7b48-5497-410a-bed8-2cde814e09fc"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#16128-1 "Hepatitis C virus Ab [Presence] in Serum"
* subject = Reference(Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#260415000 "Not detected"
* interpretation = $obs-interpretation#N "Normal"
* specimen = Reference(Specimen/3c9bd730-3ff9-40ee-9da1-4f3d5c526f13)
