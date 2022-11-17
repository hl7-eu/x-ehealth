// -------------------------------------------------------------------------------				
//  Logical Model				lab-author.fsh
// -------------------------------------------------------------------------------				
Logical: AuthorLabEhn				
Id: Author				
Title: "Author (A.1.5)"				
Description:  """A.1.5 Author (by whom the Laboratory result report or a subset of its results was authored)"""				
* identifier 0..1 Identifier "A.1.5.1 Author identifier" """The health professional or authoring device identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such asÿthe license or registration number.ÿ - Preferred system(s): """				
* name 0..* HumanName "A.1.5.2 Author name" """Person or device name. - Preferred system(s): """				
* organization 0..* Organization "A.1.5.3 Author organizationÿ" """The healthcare provider organization information. - Preferred system(s): """		 		
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabAuthor2Fhir				
Id: fhir				
Title: "eHN Lab Author model to FHIR R4 Map"				
Source: Author				
Target: "hl7.org/fhir/r4"				
				
* -> "to be mapped"				
* identifier -> "to be mapped"				
* name -> "to be mapped"				
* organization -> "to be mapped"				
// --END				
// --END				
// --END				
// --END				
				
				
