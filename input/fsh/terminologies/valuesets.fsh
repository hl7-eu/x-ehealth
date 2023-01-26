ValueSet:      LabStudyTypesXeh
Id:	       lab-studyType-xeh
Title:	       "Lab Study Types (X-eHealth)"
Description:   "Laboratory Specialties.\r\n
Notes:\r\n
Note 1:26436-6 (LABORATORY STUDIES) enables issuing a report putting together observations from multiple specialties (disciplines) in the same text block, allowing delivery of a global interpretation comment at the end of the text block that will be rendered at the end of the report.\r\n
Note 2:18721-1 (THERAPEUTIC DRUG MONITORING STUDIES) will be used for a section carrying pharmacology observations on a patient.\r\n
Note 3:Mycology and parasitology, as well as bacteriology, are part of the 18725-2 (MICROBIOLOGY STUDIES) specialty.\r\n
Note 4:Virology MAY be included in 18725-2 (MICROBIOLOGY STUDIES) specialty or 18727-8 (SEROLOGY STUDIES) or split between both specialties, depending upon the Content Creator Actor’s choice."

* ^experimental = false
* $loinc#18717-9 "BLOOD BANK STUDIES"
* $loinc#18718-7 "CELL MARKER STUDIES"
* $loinc#18719-5 "CHEMISTRY STUDIES"
* $loinc#18720-3 "COAGULATION STUDIES"
* $loinc#18721-1 "THERAPEUTIC DRUG MONITORING STUDIES"
* $loinc#18722-9 "FERTILITY STUDIES"
* $loinc#18723-7 "HEMATOLOGY STUDIES"
* $loinc#18724-5 "HLA STUDIES"
* $loinc#18725-2 "MICROBIOLOGY STUDIES"
* $loinc#18727-8 "SEROLOGY STUDIES"
* $loinc#18728-6 "TOXICOLOGY STUDIES"
* $loinc#18729-4 "URINALYSIS STUDIES"
* $loinc#18767-4 "BLOOD GAS STUDIES"
* $loinc#18768-2 "CELL COUNTS+DIFFERENTIAL STUDIES"
* $loinc#18769-0 "MICROBIAL SUSCEPTIBILITY TESTS"
* $loinc#26435-8 "MOLECULAR PATHOLOGY STUDIES"
* $loinc#26436-6 "LABORATORY STUDIES"
* $loinc#26437-4 "CHEMISTRY CHALLENGE STUDIES"
* $loinc#26438-2 "CYTOLOGY STUDIES"

ValueSet: LabOrderCodesXeH
Id: lab-order-codes-xeh
Title: "Lab Order Codes (X-eHealth)"
Description: "Laboratory Order Codes for use in X-eHealth."
* include codes from system $loinc and valueset $results-laboratory-observations-uv-ips where ORDER_OBS = "Order"
* include codes from system $loinc and valueset $results-laboratory-observations-uv-ips where ORDER_OBS = "Both"