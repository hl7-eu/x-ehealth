This zip file packages CDA Schema with X-eHealth project, the IPS and the Pharmacy extensions.


This package supplements the published CDA R2 base standard with updated Schema definitions.

This package was prepared by the HL7 Europe Team. 
It is based on the IPS XML schema, in turn based on the ELGA XML schema created by Tony Schaller, medshare GmbH, Switzerland.


========================
Contents of the package:

readme.txt:	
  This file
  
CDA_XeH.xsd:
   XML schema for message type POCD_MT000040.XeH

POCD_MT000040_XeH.xsd:
   Schema defining the elements and attributes for message type POCD_MT000040 and the extensions used by the X-eHealth templates

extPHARM/COCT_MT230100UV01_extPHARM.xsd:
   Modified COCT_MT230100UV01 schema used as source for the CDA extensions applied to the POCD_MT000040.Material class

extPHARM/hl7v3_PHARM.xsd:
   Vocabulary for the HL7 Pharmacy extension

extIPS/hl7v3_extIPS.xsd:
   Vocabulary for the HL7 IPS extension
  
extIPS/hl7v3_extIPS.xsd:
   Vocabulary for the HL7 IPS extension  
   
extXeH/hl7v3_extXeH.xsd:
   Vocabulary for the X-eHealth project extension
   
coreschemas/datatypes.xsd:
   Schema defining the CDA data types. 

coreschemas/datatypes-base.xsd:
   Schema defining base data types. Modified to support the extensions.

coreschemas/NarrativeBlock.xsd:
   Schema defining constructs allowed in the CDA narrative block.

coreschemas/voc.xsd:
   Schema defining allowed vocabulary values. 

May 15th, 2022