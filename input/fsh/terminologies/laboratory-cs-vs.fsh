//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: LaboratoryLocalVS
Id: laboratory-local-vs
Title: "Local Laboratory Codes VS"
Description: "Local laboratory codes Value Set"
//-------------------------------------------------------------------------------------------
* ^experimental = true
* codes from system http://hl7.eu/fhir/ig/xeh/CodeSystem/laboratory-local-cs

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

CodeSystem: LaboratoryLocalCS
Id: laboratory-local-cs
Title: "Local Laboratory Codes CS"
Description: "Local laboratory codes Code System"
* ^experimental = true
* ^version = "0.0.1"
* ^name = "LaboratoryLocalCS"
* ^title = "Laboratory local codes Code System"
* ^status = #active
* ^description = "Laboratory local codes Code System"
* ^content = #example
* ^caseSensitive = false
* #3002989 "Hepatitis Panel, Acute with Reflex to HBsAg Confirmation and Reflex to HCV by Quantitative NAAT"
* #0020089 "Hepatitis B Surface Antigen"
* #0020092 "Hepatitis B Core Antibody, IgM"
* #0020093 "Hepatitis A Antibody, IgM"
* #3003128 "Hepatitis C Antibody by CIA Interp"
* #2002404 "Hepatitis C Antibody by CIA Index"
