// -------------------------------------------------------------------------------				
//  Logical Model				lab-result.fsh
// -------------------------------------------------------------------------------				
Logical: ResultLabEhn				
Id: Result				
Title: "Results data elements (A.5)"				
Description:  """A.5 Results data elements """				
* narrative 0..1 BackboneElement "A.5.1 Laboratory report narrative" """A.5.1 Laboratory report narrative"""				
* narrative.report 0..* Narrative "A.5.1.1 Narrative report" """Entire report (textual summary inside the laboratory result report document) as issued by the laboratory.  - Preferred system(s): """				
* narrative.notes 0..* Narrative "A.5.1.2 Comments, interpretation and recommendations" """Comments, such as a textual interpretation or advice accompanying the result report, for example. - Preferred system(s): """		 		
* observation 0..* BackboneElement "A.5.2 Observation details" """A.5.2 Observation details (report could consist of multiple observations) """				
* observation.dateTime 0..* CodeableConcept "A.5.2.1 Observation date" """Date and time of the observation - Preferred system(s): ISO 8601"""				
* observation.code 0..* CodeableConcept "A.5.2.3 Observation code" """Code representing the observation using the agreed code systems.
- Preferred system(s): LOINC
 - Preferred system(s): NPU
 - Preferred system(s): SNOMED CT"""				
* observation.code.name 0..* string "A.5.2.3.1 Observation name" """Full name of the observation according to the used test coding standard. - Preferred system(s): """				
* observation.code.originalName 0..* string "A.5.2.3.2 Observation original name" """Original (conventional) name of the observation as used by the laboratory - Preferred system(s): """				
* observation.code.displayName 0..* string "A.5.2.3.3 Observation display name" """Simplified (short name of the observation) for display. - Preferred system(s): """				
* observation.method 0..* CodeableConcept "A.5.2.4 Observation method" """Observation method (measurement principle) to obtain the result.
- Preferred system(s): SNOMED CT"""				
* observation.device 0..* CodeableConcept "A.5.2.5 Observation device" """Device (analyser), laboratory test kit and used calibrator information (identifier, type, name, model, manufacturer)
- Preferred system(s): SNOMED CT
 - Preferred system(s): EMDN"""				
* observation.order 0..* BackboneElement "A.5.2.8 Order" """Identifies order and order placer this observation belongs to."""				
* observation.performer 0..* BackboneElement "A.5.2.9 Performer" """Identifies the originator/author and provides provenance information about the source of the results data that may have not originated with the source of the whole Laboratory Report document.  - Preferred system(s): """				
* observation.reporter 0..* BackboneElement "A.5.2.10 Reporter" """With certain observation results, e.g. there may also be an interpreter or a person responsible for validation. - Preferred system(s): """				
* observation.result 0..* BackboneElement "A.5.2.11 Observation result" """Result of the observation including text, numeric and coded results of the measurement and measurement uncertainty. Content of the observation result will vary according to the type of the observation. 
- Preferred system(s): SNOMED CT (for ordinal or nominal scale results and result interpretation)
 - Preferred system(s): UCUM (for units)"""				
* observation.interpretation 0..* CodeableConcept "A.5.2.12 Observation interpretation" """Information about reference intervals and result interpretation.
 - Preferred system(s): SNOMED CT
 - Preferred system(s): HL7 v3 Code System ObservationInterpretation"""				
* observation.description 0..* Narrative "A.5.2.13 Result description" """Comments and narrative representation of the observation result and findings."""				
* observation.accreditationStatus 0..* BackboneElement "A.5.2.14 Accreditation status" """Accreditation status of the laboratory for the particular observation."""				
//--- END				
//--- END				
//--- END				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabResult2Fhir				
Id: fhir				
Title: "eHN Lab Result model to FHIR R4 Map"				
Source: Result				
Target: "hl7.org/fhir/r4"				
				
* -> "to be mapped"				
* narrative -> "to be mapped"				
* narrative.report -> "to be mapped"				
* narrative.notes -> "to be mapped"				
* observation -> "to be mapped"				
* observation.dateTime -> "to be mapped"				
* observation.code -> "to be mapped"				
* observation.code.name -> "to be mapped"				
* observation.code.originalName -> "to be mapped"				
* observation.code.displayName -> "to be mapped"				
* observation.method -> "to be mapped"				
* observation.device -> "to be mapped"				
* observation.order -> "to be mapped"				
* observation.performer -> "to be mapped"				
* observation.reporter -> "to be mapped"				
* observation.result -> "to be mapped"				
* observation.interpretation -> "to be mapped"				
* observation.description -> "to be mapped"				
* observation.accreditationStatus -> "to be mapped"				
// --END				
// --END				
// --END				
