Instance: BundleRareCancer-02
Title: "Bundle GIST example with entries"
Description: "GIST example with entries"
InstanceOf: Bundle
Usage: #example
* identifier.system = "http://example.org"
* identifier.value = "V1CZ454557891308174803488707671419"
* type = #document
* timestamp = "2020-12-27T14:30:00+01:00"
* entry[+].fullUrl = "urn:uuid:30551ce1-5a28-4356-b684-1e639094ad4f"
* entry[=].resource = Inline-composition-02-1
* entry[+].fullUrl = "urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e9"
* entry[=].resource = Inline-Patient-02-2
* entry[+].fullUrl = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fe7"
* entry[=].resource = Inline-Organization-02-1
* entry[+].fullUrl = "urn:uuid:8e280fc4-7e66-40d6-9c03-7ae0d4e9374d"
* entry[=].resource = Inline-Condition-02-1
* entry[+].fullUrl = "urn:uuid:b2333049-c7c5-487c-b0fd-1b713fccc034"
* entry[=].resource = Inline-Encounter-02-1
* entry[+].fullUrl = "urn:uuid:2b26ce51-5ba7-40b9-bcc8-90519510cbcc"
* entry[=].resource = Inline-Procedure-02-1

Instance: Inline-composition-02-1
InstanceOf: Composition
Usage: #inline


* id = "30551ce1-5a28-4356-b684-1e639094ad4f"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#60591-5 // "Patient Summary"
* subject = Reference ( urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e9 )
* date = "2020-12-27T14:30:00+01:00"
* author[0].display = "MUDr. Aleš Procházka"
* title = "Patient Summary 27, 2020 14:30"
* confidentiality = #N
* attester[0].mode = #legal
* attester[0].time = "2020-12-27T14:30:00+01:00"
* attester[0].party.reference = "urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fe7"
* custodian  = Reference( urn:uuid:45a5c5b1-4ec1-4d60-b4b2-ff5a84a41fe7)
* section[+].title = "Tumors"
// * section[=].code = $loinc#11369-6 "Hx of Immunization"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<strong>2013</strong>: diagnosis of gastric GIST, size = 9 cm, MI = 9/50HPF, exon 11 KIT mutated, CT scan = negative elsewhere</div>"
* section[=].code = http://example.org#diag "Diagnosis"

* section[=].entry = Reference(urn:uuid:8e280fc4-7e66-40d6-9c03-7ae0d4e9374d)
* section[=].entry.display = "diagnosis of gastric GIST, size = 9 cm, MI = 9/50HPF, exon 11 KIT mutated"
// obseravtion
// proocedure

* section[=].section[+].title = "Treatment phase 1"
* section[=].section[=]
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Surgically resected (partial gastrectomy, R0) and treated with adjuvant imatinib 400 mg/d for 3 years.
</div>"
  * entry = Reference (urn:uuid:2b26ce51-5ba7-40b9-bcc8-90519510cbcc)
  * entry.display = "Surgically resected (partial gastrectomy, R0)"

// add entry for surgical procedure + outcome 
// ad medicantion adminisstration

* section[=].section[+].title = "Treatment phase 2"
* section[=].section[=].text.status = #generated
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
Relapsed in January 2017, with liver metastases, KPS = 90, and treated with imatinib 400 mg/d for 2 years, with a PR, finally progressing (generalized PD to the liver and peritoneum) in January 2019.
    </div>"
// add condiiton entr for liver metastases
// add progresses
// ad medicantion adminisstration

* section[=].section[+].title = "Treatment phase 3"
* section[=].section[=].text.status = #generated
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	Starting sunitinib 37.5 mg/d in February 2019, KPS = 90, with SD for 6 months, then progressing (generalized PD to the liver and peritoneum) in June 2019.	
    </div>"

// add progresses
// ad medicantion adminisstration

* section[=].section[+].title = "Treatment phase 4"
* section[=].section[=].text.status = #generated
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
		Starting regorafenib 160 mg/d-3/4w in July 2019, KPS = 90, with SD for 12 months, then progressing (generalized PD to the liver and peritoneum) in June 2020.
	    </div>"


* section[=].section[+].title = "Treatment phase 5"
* section[=].section[=].text.status = #generated
* section[=].section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<p>
		Currently ED: metastatic to the liver (10 visible lesions) and the peritoneum (several visible nodules). KPS = 90. No significant co-morbidities.
		Question: Which further-line therapy?</p>
    </div>"

//----------------------------


Instance: Inline-Patient-02-2
InstanceOf: Patient
Usage: #inline
* id = "2b90dd2b-2dab-4c75-9bb9-a355e07401e9"
* identifier[0].type = $v2-0203#NIIP
* identifier[0].system = "urn:oid:1.2.203.24341.1.20.2"
* identifier[0].value = "740512852"
// identifier[1].type = can we add a type for a national id card number ?
* identifier[1].system = "urn:oid:1.2.203.24341.1.20.9.1"
* identifier[1].value = "A225961454"
* identifier[2].type = $v2-0203#PPN
* identifier[2].system = "urn:oid:2.16.840.1.113883.4.330.203"
* identifier[2].value = "5484136"
* name[0].family = "Očkovaný"
* name[0].given[0] = "František"
//* gender = #male
* birthDate = "2000-03-21"
