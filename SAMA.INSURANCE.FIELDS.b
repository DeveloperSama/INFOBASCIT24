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
SUBROUTINE SAMA.INSURANCE.FIELDS
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
   
    fieldName = "CURRENCY"
    fieldLength ="3.1"
    fieldType = "CCY"
    neighbour = ""
    CALL Table.addFieldDefinition(fieldName,fieldLength,fieldType,neighbour)
    fileName = "CURRENCY"
    CALL Field.setCheckFile(fileName)
   
    fieldName = "COVER.AMOUNT"
    fieldLength ="16.1"
    fieldType = "AMT"
    neighbour = ""
    CALL Table.addFieldDefinition(fieldName,fieldLength,fieldType,neighbour)
   
    fieldName = "PREMIUM.AMOUNT"
    fieldLength ="16.1"
    fieldType = "AMT"
    neighbour = ""
    CALL Table.addFieldDefinition(fieldName,fieldLength,fieldType,neighbour)
   
   
    fieldName = "START.DATE"
    fieldLength ="11"
    fieldType = "D"
    neighbour = ""
    CALL Table.addFieldDefinition(fieldName,fieldLength,fieldType,neighbour)
    defaultValue= TODAY
    CALL Field.setDefault(defaultValue)
   
    fieldName = "PAYMENT.FREQ"
    fieldLength ="16"
    fieldType = "FQO"
    neighbour = ""
    CALL Table.addFieldDefinition(fieldName,fieldLength,fieldType,neighbour)
   
    fieldName = "XX<BENEFICIARY"
    fieldLength ="20"
    fieldType = "CUS"
    neighbour = ""
    CALL Table.addFieldDefinition(fieldName,fieldLength,fieldType,neighbour)
       
    fieldName = "XX>ADDRESS"
    fieldLength ="35"
    fieldType = "A"
    neighbour = ""
    CALL Table.addFieldDefinition(fieldName,fieldLength,fieldType,neighbour)
   
    fieldName = "AGREEMENT.TYPE"
    fieldLength ="35"
    fieldType = "A": "QTR_SEMI_ANNUAL_NULL"
    neighbour = ""
    CALL Table.addFieldDefinition(fieldName,fieldLength,fieldType,neighbour)
       
    fieldName = "CONDITIONS"
    fieldLength ="35"
    fieldType = "A"
    neighbour = ""
    CALL Table.addFieldDefinition(fieldName,fieldLength,fieldType,neighbour)
     
    CALL Table.addLocalReferenceField("")
    CALL Table.addOverrideField
    CALL Table.setAuditPosition
*-----------------------------------------------------------------------------

END