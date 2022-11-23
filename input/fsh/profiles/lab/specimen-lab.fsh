Profile: SpecimenXeh
Parent: Specimen
Id: specimen-xeh
Title: "Specimen: Laboratory"
Description: "X-eHealth Specimen profile."
* ^status = #draft
* ^publisher = "X-eHealth Project"
* ^copyright = "X-eHealth Project"
* . ^short = "Laboratory Specimen"
* . ^definition = "Laboratory specimen"
* type from LabSpecimenTypesXeh (preferred)
* type 1..1
* collection.bodySite from http://hl7.org/fhir/ValueSet/body-site (preferred)
* processing.additive only Reference(Substance or SpecimenAdditiveSubstanceXeh)
* container.type from LabSpecimenContainerXeh (preferred)

// ----------------------------------------

Profile: SpecimenAdditiveSubstanceXeh
Parent: Substance
Id: specimen-additive-substance-xeh
Title: "Specimen Additive Substance Xeh"
Description: """Specimen Additive Substance Xeh"""
* code from LabSpecimenAdditiveXeh