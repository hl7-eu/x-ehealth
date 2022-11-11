Instance: BundleMicroCultureSuscLabResult
InstanceOf: Bundle
Title: "Bundle Microbiology Culture + Susceptibility Lab Result"
Description: "Microbiology Culture + Susceptibility Lab Result"
Usage: #example
* identifier.system = "http://example.org"
* identifier.value = "V1CZ454557891308174803488707671420"
* type = #document
* timestamp = "2022-10-25T14:30:00+01:00"
* entry[+].fullUrl = "urn:uuid:4789a3ee-92b1-41b2-9b97-83daacf2a239"
* entry[=].resource = Inline-Composition-micro
* entry[+].fullUrl = "urn:uuid:5bb42c3f-56fb-4bbc-b939-73910a6cce3b"
* entry[=].resource = Inline-Patient-micro
* entry[+].fullUrl = "urn:uuid:1e139f41-4d0f-43dd-ad5a-98003c520349"
* entry[=].resource = Inline-Organization-micro
* entry[+].fullUrl = "urn:uuid:b864303b-91ab-4e29-ad74-31a7d6566875"
* entry[=].resource = Inline-Diag-Report-micro
* entry[+].fullUrl = "urn:uuid:bab0016e-1800-4e54-b595-72bd9041ffbc"
* entry[=].resource = Inline-Specimen-micro
* entry[+].fullUrl = "urn:uuid:40278a69-87aa-470f-a38f-bff1e8aee175"
* entry[=].resource = Inline-Observation-gram-stain
* entry[+].fullUrl = "urn:uuid:1097929f-890e-4e27-a31d-58599f3e2479"
* entry[=].resource = Inline-Observation-wbc
* entry[+].fullUrl = "urn:uuid:fcf220c3-7f3e-44f8-b669-48552a20fa0a"
* entry[=].resource = Inline-Observation-gs-org1
* entry[+].fullUrl = "urn:uuid:2cecbd1e-4695-46dc-adf8-3ed3b95c0c1e"
* entry[=].resource = Inline-Observation-gs-org1-quant
* entry[+].fullUrl = "urn:uuid:331d513e-a57f-4464-9eec-25533aeb6d06"
* entry[=].resource = Inline-Observation-gs-org2
* entry[+].fullUrl = "urn:uuid:931c6459-0fb0-4f02-8268-08e6d94a8f5c"
* entry[=].resource = Inline-Observation-gs-org2-quant
* entry[+].fullUrl = "urn:uuid:8754019d-256b-4df9-94f2-f80c07e08d47"
* entry[=].resource = Inline-Observation-aerobic-culture
* entry[+].fullUrl = "urn:uuid:083ee3df-1381-4ed2-849f-77808eb81a36"
* entry[=].resource = Inline-Observation-org-id1
* entry[+].fullUrl = "urn:uuid:758d2270-a997-4a8f-872f-b3fbaef209fa"
* entry[=].resource = Inline-Observation-org-id1-growth
* entry[+].fullUrl = "urn:uuid:61f8e930-46e0-41ab-9448-0d1dc74925df"
* entry[=].resource = Inline-Observation-org-id1-susc-panel
* entry[+].fullUrl = "urn:uuid:d49839fe-515c-44b6-8d19-3cc5d48feb49"
* entry[=].resource = Inline-Observation-org-id2
* entry[+].fullUrl = "urn:uuid:1ada4aeb-37cd-4d76-9815-46f627f5036c"
* entry[=].resource = Inline-Observation-org-id2-growth
* entry[+].fullUrl = "urn:uuid:d1636a51-d6c7-48de-9de6-29d741c96937"
* entry[=].resource = Inline-Observation-org-id2-susc-panel
* entry[+].fullUrl = "urn:uuid:5408f7d9-e6a2-492c-8ae3-dbf96b40bf6e"
* entry[=].resource = Inline-Observation-anaerobic-culture

Instance: Inline-Composition-micro
InstanceOf: Composition
Usage: #inline
* id = "4789a3ee-92b1-41b2-9b97-83daacf2a239"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#11502-2 "Laboratory report"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* date = "2022-10-25T14:30:00+01:00"
* author[0].display = "MUDr. Aleš Procházka"
* title = "Laboratory Report Bacterial Aerobic & Anaerobic Culture and Susceptibility - 27 Dec, 2020 14:30"
* confidentiality = #N
* attester[0].mode = #legal
* attester[0].time = "2020-12-27T14:30:00+01:00"
* attester[0].party = Reference(Organization/1e139f41-4d0f-43dd-ad5a-98003c520349)
* custodian = Reference(Organization/1e139f41-4d0f-43dd-ad5a-98003c520349)
* relatesTo[+].code = #transforms
* relatesTo[=].targetIdentifier.system = "urn:ietf:rfc:3986"
* relatesTo[=].targetIdentifier.value = "urn:uuid:b864303b-91ab-4e29-ad74-31a7d6566875" // Inline-Diag-Report-micro
* section[+].title = "Bacterial Aerobic & Anaerobic Culture & Susceptibility"
* section[=].code.text = "Bacterial Aerobic & Anaerobic Culture & Susceptibility"
* section.section[+].title = "Gram Stain"
* section.section[=].code.text = "Gram Stain"
* section.section[=].entry = Reference(Observation/40278a69-87aa-470f-a38f-bff1e8aee175) // Inline-Observation-gram-stain
* section.section[+].title = "Aerobic Culture"
* section.section[=].code.text = "Aerobic Culture"
* section.section[=].entry = Reference(Observation/8754019d-256b-4df9-94f2-f80c07e08d47) // Inline-Observation-aerobic-culture
* section.section[+].title = "Anaerobic Culture"
* section.section[=].code.text = "Anaerobic Culture"
* section.section[=].entry = Reference(Observation/5408f7d9-e6a2-492c-8ae3-dbf96b40bf6e) // Inline-Observation-anaerobic-culture

Instance: Inline-Patient-micro
InstanceOf: Patient
Usage: #inline
* id = "5bb42c3f-56fb-4bbc-b939-73910a6cce3b"
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

Instance: Inline-Organization-micro
InstanceOf: Organization
Usage: #inline
* id = "1e139f41-4d0f-43dd-ad5a-98003c520349"
* identifier[0].system = "urn:oid:1.2.203" // this is a valid OID representing the Czech Republic, though it is not being recognized as valid by the IG Publisher
* identifier[0].value = "24341"
* name = "Ministry of Health of the Czech Republic"

Instance: Inline-Diag-Report-micro
InstanceOf: DiagnosticReport-lab-xeh
Usage: #inline
* id = "b864303b-91ab-4e29-ad74-31a7d6566875"
* status = #final
* category = $diagnostic-service-sections#LAB
* code.text = "Bacterial Aerobic & Anaerobic Culture & Susceptibility"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* specimen = Reference(Specimen/bab0016e-1800-4e54-b595-72bd9041ffbc)
* result[+] = Reference(Observation/40278a69-87aa-470f-a38f-bff1e8aee175) // Inline-Observation-gram-stain
* result[+] = Reference(Observation/8754019d-256b-4df9-94f2-f80c07e08d47) // Inline-Observation-aerobic-culture
* result[+] = Reference(Observation/5408f7d9-e6a2-492c-8ae3-dbf96b40bf6e) // Inline-Observation-anaerobic-culture

Instance: Inline-Specimen-micro
InstanceOf: Specimen-uv-ips
Usage: #inline
* id = "bab0016e-1800-4e54-b595-72bd9041ffbc"
* status = #available
* type = $sct#119365002 "Specimen from wound"
* collection.collectedDateTime = "2022-10-25T13:35:00+01:00"

Instance: Inline-Observation-gram-stain
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "40278a69-87aa-470f-a38f-bff1e8aee175"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.text = "Gram Stain"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* hasMember[+] = Reference(Observation/1097929f-890e-4e27-a31d-58599f3e2479) // Inline-Observation-wbc
* hasMember[+] = Reference(Observation/fcf220c3-7f3e-44f8-b669-48552a20fa0a) // Inline-Observation-gs-org1
* hasMember[+] = Reference(Observation/331d513e-a57f-4464-9eec-25533aeb6d06) // Inline-Observation-gs-org2

Instance: Inline-Observation-wbc
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "1097929f-890e-4e27-a31d-58599f3e2479"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#72163-9 "Leukocytes [Presence] in Specimen by Gram stain"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#2667000 "Absent"
* valueCodeableConcept.text = $sct#2667000 "None observed"

Instance: Inline-Observation-gs-org1
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "fcf220c3-7f3e-44f8-b669-48552a20fa0a"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#70003006 "Gram-positive cocci in clusters"
* hasMember[+] = Reference(Observation/2cecbd1e-4695-46dc-adf8-3ed3b95c0c1e) // Inline-Observation-gs-org1-quant

Instance: Inline-Observation-gs-org1-quant
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "2cecbd1e-4695-46dc-adf8-3ed3b95c0c1e"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.text = "Observed Quantity"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#441614007 "Present + out of +++"
* valueCodeableConcept.text = "+"

Instance: Inline-Observation-gs-org2
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "331d513e-a57f-4464-9eec-25533aeb6d06"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#664-3 "Microscopic observation [Identifier] in Specimen by Gram stain"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#87172008 "Gram-negative rods"
* hasMember[+] = Reference(Observation/931c6459-0fb0-4f02-8268-08e6d94a8f5c) // Inline-Observation-gs-org2-quant

Instance: Inline-Observation-gs-org2-quant
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "931c6459-0fb0-4f02-8268-08e6d94a8f5c"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.text = "Observed Quantity"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"

Instance: Inline-Observation-aerobic-culture
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "8754019d-256b-4df9-94f2-f80c07e08d47"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.text = "Aerobic Culture"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* hasMember[+] = Reference(Observation/083ee3df-1381-4ed2-849f-77808eb81a36) // Inline-Observation-org-id1
* hasMember[+] = Reference(Observation/d49839fe-515c-44b6-8d19-3cc5d48feb49) // Inline-Observation-org-id2

Instance: Inline-Observation-org-id1
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "083ee3df-1381-4ed2-849f-77808eb81a36"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#634-6 "Bacteria identified in Specimen by Aerobe culture"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#3092008 "Staphylococcus aureus"
* hasMember[+] = Reference(Observation/758d2270-a997-4a8f-872f-b3fbaef209fa) // Inline-Observation-org-id1-growth
* hasMember[+] = Reference(Observation/61f8e930-46e0-41ab-9448-0d1dc74925df) // Inline-Observation-org-id1-susc-panel

Instance: Inline-Observation-org-id1-growth
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "758d2270-a997-4a8f-872f-b3fbaef209fa"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.text = "Microorganism Growth"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#441517005 "Present ++ out of +++"
* valueCodeableConcept.text = "++"

Instance: Inline-Observation-org-id1-susc-panel
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "61f8e930-46e0-41ab-9448-0d1dc74925df"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#29576-6 "Bacterial susceptibility panel"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
// the data-absent-reason extension is included to satisfy the ips-2 constraint, which currently does not take into account the use of 'component'.
* valueCodeableConcept.extension[+].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* valueCodeableConcept.extension[=].valueCode = #not-permitted
* component[+].code = $loinc#18900-1 "Cephalothin [Susceptibility]"
* component[=].valueQuantity.value = 2
* component[=].valueQuantity.comparator = #<=
* component[=].interpretation = $obs-interpretation#S "Susceptible"
* component[+].code = $loinc#20629-2 "levoFLOXacin [Susceptibility]"
* component[=].valueQuantity.value = 4
* component[=].valueQuantity.comparator = #>
* component[=].interpretation = $obs-interpretation#R "Resistant"
* component[+].code = $loinc#18961-3 "Oxacillin [Susceptibility]"
* component[=].valueQuantity.value = 0.5
* component[=].interpretation = $obs-interpretation#S "Susceptible"
* component[+].code = $loinc#19000-9 "Vancomycin [Susceptibility]"
* component[=].valueQuantity.value = 1
* component[=].valueQuantity.comparator = #<=
* component[=].interpretation = $obs-interpretation#S "Susceptible"

Instance: Inline-Observation-org-id2
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "d49839fe-515c-44b6-8d19-3cc5d48feb49"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#634-6 "Bacteria identified in Specimen by Aerobe culture"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#40886007 "Klebsiella oxytoca"
* hasMember[+] = Reference(Observation/1ada4aeb-37cd-4d76-9815-46f627f5036c) // Inline-Observation-org-id2-growth
* hasMember[+] = Reference(Observation/d1636a51-d6c7-48de-9de6-29d741c96937) // Inline-Observation-org-id2-susc-panel

Instance: Inline-Observation-org-id2-growth
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "1ada4aeb-37cd-4d76-9815-46f627f5036c"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.text = "Microorganism Growth"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#263866000 "Scanty growth"

Instance: Inline-Observation-org-id2-susc-panel
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "d1636a51-d6c7-48de-9de6-29d741c96937"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#29576-6 "Bacterial susceptibility panel"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
// the data-absent-reason extension is included to satisfy the ips-2 constraint, which currently does not take into account the use of 'component'.
* valueCodeableConcept.extension[+].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* valueCodeableConcept.extension[=].valueCode = #not-permitted
* component[+].code = $loinc#18864-9 "Ampicillin [Susceptibility]"
* component[=].valueQuantity.value = 16
* component[=].valueQuantity.comparator = #>
* component[=].interpretation = $obs-interpretation#R "Resistant"
* component[+].code = $loinc#18906-8 "Ciprofloxacin [Susceptibility]"
* component[=].valueQuantity.value = 0.5
* component[=].valueQuantity.comparator = #<=
* component[=].interpretation = $obs-interpretation#S "Susceptible"
* component[+].code = $loinc#18928-2 "Gentamicin [Susceptibility]"
* component[=].valueQuantity.value = 8
* component[=].valueQuantity.comparator = #>
* component[=].interpretation = $obs-interpretation#R "Resistant"
* component[+].code = $loinc#18932-4 "Imipenem [Susceptibility]"
* component[=].valueQuantity.value = 1
* component[=].valueQuantity.comparator = #<=
* component[=].interpretation = $obs-interpretation#S "Susceptible"

Instance: Inline-Observation-anaerobic-culture
InstanceOf: Observation-results-laboratory-eu-xeh
Usage: #inline
* id = "5408f7d9-e6a2-492c-8ae3-dbf96b40bf6e"
* status = #final
* category[laboratory] = $observation-category#laboratory
* code = $loinc#635-3 "Bacteria identified in Specimen by Anaerobe culture"
* code.text = "Anaerobic Culture"
* subject = Reference(Patient/5bb42c3f-56fb-4bbc-b939-73910a6cce3b)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer[+].display = "MUDr. Aleš Procházka"
* valueCodeableConcept = $sct#264868006 "No growth"
