// -------------------------------------------------------------------------------				
//  Logical Model				lab-recipient.fsh
// -------------------------------------------------------------------------------				
Logical: RecipientLabEhn				
Id: Recipient				
Title: "Information recipient (A.1.4)"				
Description:  """A.1.4 Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist),ÿif applicable"""				
* identifier 0..1 Identifier "A.1.4.1 Recipient identifier" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such asÿthe license or registration number.ÿIn case when recipient is not a health professional, e.g. patient, appropriate personal identifier should be used.ÿ"""				
* name 0..* HumanName "A.1.4.2 Recipient name" """Person name."""				
* organization 0..* Organization "A.1.4.3 Recipient organizationÿ" """The healthcare provider organization information."""		 		
//--- END				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabRecipient2Fhir				
Id: fhir				
Title: "eHN Lab Recipient model to FHIR R4 Map"				
Source: Recipient				
Target: "hl7.org/fhir/r4"				
				
* -> "to be mapped"				
* identifier -> "to be mapped"				
* name -> "to be mapped"				
* organization -> "to be mapped"				
// --END				
// --END				
// --END				
// --END				
				
				
