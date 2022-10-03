//====== RuleSet =====================================

RuleSet: ProcedureRadiotherapyXehRules
* extension contains 
	ResourceRelatedInfo named relatedDose 0..*
	and $procedure-method named procedureMethod 0..1
	and RadiotherapyEnergyOrIsotope named energyOrIsotope 0..*
	and PerformedTiming named performedTiming 0..1
	
* extension[relatedDose].valueReference only Reference(TotalDoseRadObsXeh)
* extension[energyOrIsotope]
* extension[procedureMethod].valueCodeableConcept from BrachytherapyType
* extension[performedTiming].valueTiming.repeat.count ^short = "Number of repetitions"

* identifier ^short = "External Identifiers for this radiotherapy / boost"
* status ^short = "Procedure status"
* category = $sct#108290001 "Radiotherapy" // part of GPS
* code 1..1  // TYPE - add 1 => External beam (33195004 | External beam radiotherapy); 2 => Brachytherapy (152198000 | Brachytherapy ); 3 => Metabolic/radionuclide therapy (399315003 | Radionuclide therapy)
* code from RadiotherapyTypeVs (extensible)
// add slice on coding to allow more precise data
* subject only Reference(PatientXeh)	
* performedPeriod 1.. 
* reasonReference 1..  // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerXeh)
* bodySite 0..
  * ^short = "required for Brachytherapy and External beam"
* insert RadiotherapyBodySiteExt
* note ^short = "Additional information about the Radiotherapy" 


RuleSet: RadiotherapyBodySiteExt


* bodySite.extension contains
     
	 BodyLocationQualifier named locationQualifier 0..*
     and LateralityQualifier named lateralityQualifier 0..1

	 // $mcode-body-location-qualifier named locationQualifier 0..* 
	// $mcode-laterality-qualifier named lateralityQualifier 0..1
    
* bodySite from VsRadiotherapy
// * extension and bodySite and bodySite.extension[lateralityQualifier] MS
* bodySite.extension[locationQualifier].valueCodeableConcept from FromToPosteriorAnteriorVs


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyXeh
Parent:   Procedure 
Id:       Procedure-radiotheraphy-eu-xeh
Title:    "Procedure: Radiotherapy"
Description: "This profile defines how to represent Procedures in FHIR for describing a set of Radiotherapy data required by the X-eHealth algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------

* insert ProcedureRadiotherapyXehRules
* location only Reference(LocationXeh)
* usedCode ^short = "Coded items used during the procedure"
* usedCode from RadiotherapyDeviceType (extensible) // update the value set




//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyShieldingXeh
Parent:   Procedure 
Id:       Procedure-radiotheraphyShield-eu-xeh	
Title:    "Procedure: Radiotherapy Shielding"
Description: "This profile defines how to represent Shielding Procedures in FHIR for describing a set of Radiotherapy data required by the X-eHealth algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------


// * identifier ^short = "External Identifiers for this radiotherapy / boost"
// * status ^short = "Procedure status"
* code 1..1  // TYPE - add 1 => External beam (33195004 | External beam radiotherapy); 2 => Brachytherapy (152198000 | Brachytherapy ); 3 => Metabolic/radionuclide therapy (399315003 | Radionuclide therapy)
* code = $sct#228720004 "Making of shielding block for radiotherapy"
* partOf 1..1
* partOf only Reference (ProcedureRadiotherapyXeh)
// add slice on coding to allow more precise data
* subject only Reference(PatientXeh)	
* reasonReference 1..  // add reference to the diagnosis
* reasonReference only Reference(ConditionPrimaryCancerXeh)
* bodySite 1..*
* insert RadiotherapyBodySiteExt
* note ^short = "Additional information about the Radiotherapy" 







//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyBoostXeh
Parent:   Procedure 
Id:       Procedure-radiotheraphyBoost-eu-xeh
Title:    "Procedure: Radiotherapy Boost"
Description: "This profile defines how to represent Procedures in FHIR for describing a set of data required by X-eHealth for Radiotherapy Boosts" //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


* insert ProcedureRadiotherapyXehRules
* code = $sct#445232009 "Boost radiation therapy"
* partOf 1..1
* partOf only Reference (ProcedureRadiotherapyXeh)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  TotalDoseRadObsXeh
Parent:   Observation
Id:       Observation-totalDoseRad-eu-xeh
Title:    "Observation: Radiotherapy Total Dose Xeh"
Description: "This profile defines how to represent Radiotherapy Total Dose in FHIR for the purpose of the X-eHealth project."
//-------------------------------------------------------------------------------------------

* insert CumulativeDoseObsRules
* category 1..
* category = $observation-category#procedure 
// * code = $dicomOntology#113725 "Dose (RP) Total" // evaluate 445565002 | Total boost radiation dose delivered (observable entity) AND 445461008 | Total radiation dose delivered (observable entity)
* code 1..
* code from RadiotherapyDoseTypeVs
* bodySite 0..
  * ^short = "required for Brachytherapy and External beam"
* insert RadiotherapyBodySiteExt


/* ======

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ProcedureRadiotherapyMinXeh
Parent:   Procedure 
Id:       Procedure-radiotheraphy-min-eu-xeh
Title:    "Procedure: Radiotherapy (Minimal Set)"
Description: "This profile defines how to represent Procedures in FHIR for describing a Minimal set of Radiotherapy data required by the X-eHealth algorithm to generate the care plan."
//-------------------------------------------------------------------------------------------
* insert ProcedureRadiotherapyXehRules



==== */