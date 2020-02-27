* @ValidationCode : MjoxMDkyMjc2NTpDcDEyNTI6MTU4MTY4MDkyMjIyODpLTUFMTEFWTzotMTotMTowOjA6dHJ1ZTpOL0E6UjE5X0FNUi4wOi0xOi0x
* @ValidationInfo : Timestamp         : 14 Feb 2020 17:18:42
* @ValidationInfo : Encoding          : Cp1252
* @ValidationInfo : User Name         : KMALLAVO
* @ValidationInfo : Nb tests success  : N/A
* @ValidationInfo : Nb tests failure  : N/A
* @ValidationInfo : Rating            : N/A
* @ValidationInfo : Coverage          : N/A
* @ValidationInfo : Strict flag       : N/A
* @ValidationInfo : Bypass GateKeeper : true
* @ValidationInfo : Compiler Version  : R19_AMR.0
$PACKAGE TEST.EXM
SUBROUTINE ANITHA.ACCOUNT.FIELDS
*------------------------------------------ -----------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
*-----------------------------------------------------------------------------

   
    fieldName = "CUSTOMER.NO"
    fieldLength ="10.1"
    fieldType = "CUS"
    neighbour = ""
    CALL Table.addFieldDefinition(fieldName,fieldLength,fieldType,neighbour)
    fileName = "CUSTOMER"
    CALL Field.setCheckFile(fileName)
    
    fieldName = "STU.EMAIL.ID"
    fieldLength = "35.1.C"
    fieldType<1> = "ANY"
    fieldType<7> = ""
    fieldType<9> = "HOT.FIELD"
    CALL Table.addFieldDefinition(fieldName, fieldLength, fieldType,"")
    
   
    fieldName = "CURRENCY"
    fieldLength ="31.1"
    fieldType = "CCY"
    neighbour = ""
    CALL Table.addFieldDefinition(fieldName,fieldLength,fieldType,neighbour)
    fileName = "CURRENCY"
    CALL Field.setCheckFile(fileName)
    
    fieldName = "CATEGORY"
    fieldLength ="13.1"
    fieldType = "CATEGORY"
    neighbour = ""
    CALL Table.addFieldDefinition(fieldName,fieldLength,fieldType,neighbour)
    fileName = "CATEGORY"
    CALL Field.setCheckFile(fileName)
    
    
 
    fieldName = "ACCOUNT.NUMBER"
    fieldLength ="16.1"
    fieldType = "ACCT.NO"
    neighbour = ""
    CALL Table.addFieldDefinition(fieldName,fieldLength,fieldType,neighbour)
    
    fieldName = "ACCOUNT.OFFICER"
    fieldLength ="18.1"
    fieldType = "ACCOUNT.OFFICER"
    neighbour = ""
    CALL Table.addFieldDefinition(fieldName,fieldLength,fieldType,neighbour)
   
   
    fieldName = "CUSTOMER.MNEMONIC"
    fieldLength ="17.1"
    fieldType = "MNEMONIC"
    neighbour = ""
    CALL Table.addFieldDefinition(fieldName,fieldLength,fieldType,neighbour)
   
    fieldName = "NAME"
    fieldLength = "20.1"
    fieldType = "A"
    fieldType<3> = "NOCHANGE"
    CALL Table.addFieldDefinition(fieldName, fieldLength, fieldType,neighbour)
   
    fieldName = "GENDER"
    fieldLength = "7"
    fieldType = "A"
    fieldType<2> = "MALE_FEMALE_OTHERS"
    fieldType<3> = "NOINPUT"
    CALL Table.addFieldDefinition(fieldName, fieldLength, fieldType,neighbour)
   
    CALL Table.addLocalReferenceField("")
    CALL Table.addOverrideField
    CALL Table.setAuditPosition
*-----------------------------------------------------------------------------

END