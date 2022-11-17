// -------------------------------------------------------------------------------				
//  Logical Model				lab-order.fsh
// -------------------------------------------------------------------------------				
Logical: OrderLabEhn				
Id: Order				
Title: "Order (A2, A3)"				
Description:  """Order information (A.2) and reason (A3)"""				
* orderDetails 0..1 BackboneElement "A.2 Order information" """A.2 Order information (Laboratory Result Report could respond to multiple test orders) """				
* orderDetails.identifier 0..* Identifier "A.2.1 Order Id" """An identifier of the laboratory test order. Laboratory Result Report may respond to multiple orders."""				
* orderDetails.dateTime 0..* dateTime "A.2.2 Order date and time" """Date and time of the order placement. - Preferred system(s): ISO 8601"""		 		
* orderDetails.orderPlacerIdentifier 0..* Identifier "A.2.3 Order placer identifier" """The health professional identification number. Either an internal identifier assigned by a healthcare provider institution or (preferably) a national health professional ID such asÿthe license or registration number. In case when order placer is not a health professional, e.g. by patients themselves where applicable,ÿappropriate personal identifier should be used.ÿ"""				
* orderDetails.orderPlacerName 0..* HumanName "A.2.4 Order placer name" """Person name."""				
* orderDetails.orderPlacerContacts 0..* BackboneElement "A.2.5 Order placer contact details" """Contact details of order placer (address and telecom details)."""				
* orderDetails.orderPlacerOrganization 0..* Organization "A.2.6 Order placer organizationÿ" """Order placer organization information."""				
* reason 0..* BackboneElement "A.3 Order reason" """A.3 Order reason (Laboratory Result Report could respond to multiple reasons) """				
* reason.code 0..* CodeableConcept "A.3.1 Problem / diagnosis / condition description" """Health conditions affecting the health of the patient and are important to be known for a health professional during a health encounter. Clinical conditions of the subject relevant for the results interpretation.
- Preferred system(s): ICD-10 (ICD-11 when available)
- Preferred system(s): SNOMED CT
- Preferred system(s): Orphacode"""				
//--- END				
//--- END				
//--- END				
				
				
				
				
				
				
				
				
				
				
// -------------------------------------------------------------------------------				
//  Map to FHIR R4				
// -------------------------------------------------------------------------------				
Mapping: eHNLabOrder2Fhir				
Id: fhir				
Title: "eHN Lab Order model to FHIR R4 Map"				
Source: Order				
Target: "hl7.org/fhir/r4"				
				
* -> "to be mapped"				
* orderDetails -> "to be mapped"				
* orderDetails.identifier -> "to be mapped"				
* orderDetails.dateTime -> "to be mapped"				
* orderDetails.orderPlacerIdentifier -> "to be mapped"				
* orderDetails.orderPlacerName -> "to be mapped"				
* orderDetails.orderPlacerContacts -> "to be mapped"				
* orderDetails.orderPlacerOrganization -> "to be mapped"				
* reason -> "to be mapped"				
* reason.code -> "to be mapped"				
// --END				
// --END				
// --END				
