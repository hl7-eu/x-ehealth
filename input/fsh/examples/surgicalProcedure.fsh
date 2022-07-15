
RuleSet: procedure-GIST

* status = #completed
* category = http://snomed.info/sct#387713003 "Surgical Procedure"
* code = $sct#387867004 "Gastrotomy"
  * text = "Surgically resected (partial gastrectomy, R0)"
* subject = Reference( urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e9 )
* subject.type = "Patient"
* performedDateTime = "2012-05-09"
/* -- 
* location = Reference(Location/urn:uuid:71ba1063-665c-44fe-8749-94edf55d18ec)
* location.type = "Location"
--*/
* reasonReference = Reference(urn:uuid:8e280fc4-7e66-40d6-9c03-7ae0d4e9374d)
* reasonReference.type = "Condition"
* bodySite.coding[+] = $icd03#C16 "Stomach"
* bodySite.coding[+] = $sct#69695003 "Stomach structure"

Instance: Inline-Procedure-02-1
InstanceOf: Procedure
Usage: #inline
* insert procedure-GIST
* id = "2b26ce51-5ba7-40b9-bcc8-90519510cbcc"
* subject = Reference( urn:uuid:2b90dd2b-2dab-4c75-9bb9-a355e07401e9 )
* reasonReference = Reference(urn:uuid:8e280fc4-7e66-40d6-9c03-7ae0d4e9374d)

Instance: Procedure-rc-1
InstanceOf: Procedure
Title: "Procedure GIST example"
Description: "Procedure GIST example"
Usage: #example
* insert procedure-GIST
* subject = Reference( Patient-rc )
* reasonReference = Reference(Condition-rc-1)
