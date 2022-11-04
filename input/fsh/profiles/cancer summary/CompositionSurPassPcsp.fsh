
//====== RuleSet =====================================

RuleSet: SectionCommon

* title 1..
* code 1..
* text 1..
* emptyReason ^short = "Why this section is empty"


// -----------------------------------

RuleSet: SubSectionStructure

* section[chemotherapy]
  * insert SectionCommon
  * code ^short = "Chemotherapy"
  * code = $loinc#11486-8
  * entry 1..
  * entry only Reference( MedicationAdministrationXeh )
						
* section[stemCellTransplantation]
  * insert SectionCommon
  * code ^short = "Stem Cell Transplantation"
  * code = CsGenericXeh#section-sct
  * entry 1..
  * entry only Reference( ProcedureSctXeh )
  
* section[radiotherapy]
  * insert SectionCommon
  * code = CsGenericXeh#section-rt
  * code ^short = "Radiotherapy"
  * entry 1..
  * entry only Reference(	ProcedureRadiotherapyXeh or ProcedureRadiotherapyBoostXeh )
  
* section[majorSurgery]
  * insert SectionCommon
  * code = $loinc#8690-0
  * code ^short = "History of Surgical procedures"
  * entry 1..
  // * entry only Reference( ProcedureSurgeryXeh )
  * entry only Reference( Procedure )
  
* section[otherInfos]
  * insert SectionCommon
  * code = CsGenericXeh#section-otherInfos
  * code ^short = "Other Medical Information"
  
* section[medicalSuggestion]
  * insert SectionCommon
  * code = CsGenericXeh#section-suggestion
  * code ^short = "Medical Suggestions"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CompositionSurpassXeh
Parent:   Composition
Id:       Composition-surpass-eu-xeh
Title:    "Composition: Survivor Passport"
Description: "This profile defines how to represent a Xeh Survivor Passport by using a HL7 FHIR Composition for the purpose of the X-eHealth project."
//-------------------------------------------------------------------------------------------

* identifier ^short = "Business identifier for this SurPass"
* status ^short = "preliminary|final|amended|entered-in-error"
* type = CsGenericXeh#surpass
* type.coding.display ^short = "Childhood Cancer Survivor Passport"
* subject 1.. 
* subject only Reference(PatientXeh)
* date ^short = "SurPass Composition editing time"
* author ^short = "Who and/or what authored this SurPass"
* title 1.. 
  * ^short = "Childhood Cancer Survivor Passport"
* attester ^short = "Who attested the accuracy of this SurPass"
* section 1..*

  * code ^short = "Cancer diagnosis Narrative" // Front line treatment ?
  * code = $loinc#72135-7 
  * entry 1..
  * entry only Reference(	ConditionPrimaryCancerXeh or
							ProcedureFltXeh
						)
						
  * insert SectionCommon
  
  // slice the diagnosis-FLT section
  * section 1..*
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "code"
    * ^slicing.rules = #open
    * ^slicing.description = "Slice based on the coding.code pattern"
  
  * section contains
         chemotherapy			  0..1 and		 
         stemCellTransplantation  0..1 and
         radiotherapy			  0..1 and
         majorSurgery			  0..1 and
         otherInfos				  0..1 and
         medicalSuggestion 		  0..1

      
  // add common sub sections
  * insert SubSectionStructure

  // add the relapse After EOT section
  * section contains relapseAfterEOT 0..  
  
  // slice the relapse After EOT sub-sections
  * section[relapseAfterEOT].section ^slicing.discriminator.type = #pattern
  * section[relapseAfterEOT].section ^slicing.discriminator.path = "code"
  * section[relapseAfterEOT].section ^slicing.rules = #open
  * section[relapseAfterEOT].section ^slicing.description = "Slice based on the coding.code pattern"
  
  * section[relapseAfterEOT].section contains 
         chemotherapy			  0..1 and		 
         stemCellTransplantation  0..1 and
         radiotherapy			  0..1 and
         majorSurgery			  0..1 and
         otherInfos				  0..1 and
         medicalSuggestion 		  0..1
		
// --- relapseAfterEOT Sub Sections begin 
  * section[relapseAfterEOT]
  // add common sub sections
    * insert SubSectionStructure
	
	
// --- relapseAfterEOT Sub Sections end
	
  * section contains otherConditions 0..1
  * section[otherConditions]
    * code = CsGenericXeh#section-otherConditions
    * code ^short = "Other Health Conditions"
    * insert SectionCommon
