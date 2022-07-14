Instance: BundleRareCancerAsPS
InstanceOf: Bundle
Title: "Bundle GIST as PS"
Description: "GIST as PS"
Usage: #example
* identifier.system = "http://example.orgpid"
* identifier.value = "V1CZ454557891308174803488707671418"
* type = #document
* timestamp = "2020-12-27T14:30:00+01:00"
* entry[+].fullUrl = "urn:uuid:51369f69-de66-4d7c-b660-9bbed5b6eede"
* entry[=].resource = Inline-composition-ps-1
* entry[+].fullUrl = "urn:uuid:9807c1a1-3906-47a7-9fa1-acbf1ae52ddc"
* entry[=].resource = Inline-Patient-ps-2
* entry[+].fullUrl = "urn:uuid:034f9d8e-d4b8-4e3e-b956-d06bf6f1cda6"
* entry[=].resource = Inline-Organization-ps-4



Instance: Inline-composition-ps-1
InstanceOf: Composition
Usage: #inline

* id = "51369f69-de66-4d7c-b660-9bbed5b6eede"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3f69e0a5-2177-4540-baab-7a5d0877428f"
* status = #final
* type = $loinc#60591-5 // "Patient Summary"
* subject.reference = "urn:uuid:9807c1a1-3906-47a7-9fa1-acbf1ae52ddc"
* date = "2020-12-27T14:30:00+01:00"
* author[0].display = "MUDr. Aleš Procházka"
* title = "Patient Summary 27, 2020 14:30"
* confidentiality = #N
* attester[0].mode = #legal
* attester[0].time = "2020-12-27T14:30:00+01:00"
* attester[0].party.reference = "urn:uuid:034f9d8e-d4b8-4e3e-b956-d06bf6f1cda6"
* custodian.reference = "urn:uuid:034f9d8e-d4b8-4e3e-b956-d06bf6f1cda6"
* section[+].title = "Medical History"
// * section[=].code = $loinc#11369-6 "Hx of Immunization"
* section[=].code = http://example.org#medHx "Medical History"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<p>
		<strong>
			<em>Diagnosis</em>
		</strong>
	</p>
	<p>2013: diagnosis of gastric GIST, size = 9 cm, MI = 9/50HPF, exon 11 KIT mutated, CT scan = negative elsewhere</p>
	<p>
		<strong>
			<em>Treatment phase 1</em>
		</strong>
	</p>
	<p>Surgically resected (partial gastrectomy, R0) and treated with adjuvant imatinib 400 mg/d for 3 years.
	</p>
	<p>
		<strong>
			<em>Treatment phase 2</em>
		</strong>
	</p>
	<p>Relapsed in January 2017, with liver metastases, KPS = 90, and treated with imatinib 400 mg/d for 2 years, with a PR, finally progressing (generalized PD to the liver and peritoneum) in January 2019.
	</p>
	<p>
		<strong>
			<em>Treatment phase 3</em>
		</strong>
	</p>
	<p>Starting sunitinib 37.5 mg/d in February 2019, KPS = 90, with SD for 6 months, then progressing (generalized PD to the liver and peritoneum) in June 2019.
	</p>
	<p>
		<strong>
			<em>Treatment phase 4</em>
		</strong>
	</p>
	<p>
		Starting regorafenib 160 mg/d-3/4w in July 2019, KPS = 90, with SD for 12 months, then progressing (generalized PD to the liver and peritoneum) in June 2020.
	</p>
	<strong>
		<em>Treatment phase 5</em>
	</strong>
	<p>
		Currently ED: metastatic to the liver (10 visible lesions) and the peritoneum (several visible nodules). KPS = 90. No significant co-morbidities.
		Question: Which further-line therapy?
	</p>
</div>"

* section[+].title = "Problems"
// * section[=].code = $loinc#11369-6 "Hx of Immunization"
* section[=].code = http://example.org#diag "Problems"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<p>2013: gastric GIST</p>
</div>"


* section[+].title = "Medication Summary"
// * section[=].code = $loinc#11369-6 "Hx of Immunization"
* section[=].code = http://example.org#ms "Medication Summary"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<p>Imatinib 400 mg/d for 3 years.</p>
	<p>2017: imatinib 400 mg/d for 2 years</p>	
	<p>February 2019: sunitinib 37.5 mg/d</p>
	<p>July 2019: regorafenib 160 mg/d-3/4w</p>
</div>"

* section[+].title = "Allergies and Intolerances"
// * section[=].code = $loinc#11369-6 "Hx of Immunization"
* section[=].code = http://example.org#aoi "Allergies and Intolerances"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<p>No information</p>
</div>"

* section[+].title = "Hx of Procedures"
// * section[=].code = $loinc#11369-6 "Hx of Immunization"
* section[=].code = http://example.org#proc "Hx of Procedures"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<p>Partial gastrectomy, R0</p>
</div>"

* section[+].title = "Devices"
// * section[=].code = $loinc#11369-6 "Hx of Immunization"
* section[=].code = http://example.org#dev "Devices"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">
	<p>No information</p>
</div>"



Instance: Inline-Patient-ps-2
InstanceOf: Patient
Usage: #inline
* id = "9807c1a1-3906-47a7-9fa1-acbf1ae52ddc"
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

Instance: Inline-Organization-ps-4
InstanceOf: Organization
Usage: #inline
* id = "034f9d8e-d4b8-4e3e-b956-d06bf6f1cda6"
* identifier[0].system = "urn:oid:1.2.203"
* identifier[0].value = "24341"
* name = "Ministry of Health of the Czech Republic"