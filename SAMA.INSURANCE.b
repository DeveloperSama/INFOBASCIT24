* @ValidationCode : MjotMjQ3NDAxNDQxOkNwMTI1MjoxNTgxNjc5NDIwMjA5OktNQUxMQVZPOi0xOi0xOjA6MDpmYWxzZTpOL0E6UjE5X0FNUi4wOi0xOi0x
* @ValidationInfo : Timestamp         : 14 Feb 2020 16:53:40
* @ValidationInfo : Encoding          : Cp1252
* @ValidationInfo : User Name         : KMALLAVO
* @ValidationInfo : Nb tests success  : N/A
* @ValidationInfo : Nb tests failure  : N/A
* @ValidationInfo : Rating            : N/A
* @ValidationInfo : Coverage          : N/A
* @ValidationInfo : Strict flag       : N/A
* @ValidationInfo : Bypass GateKeeper : false
* @ValidationInfo : Compiler Version  : R19_AMR.0
$PACKAGE TEST.EXM
SUBROUTINE SAMA.INSURANCE
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
   
* TODO add a description of the application here.
* @author youremail@temenos.com
* @stereotype Application
* @package TODO define the product group and product, e.g. infra.eb
* </doc>
*------------------------------------------------------------------------
* TODO - You MUST write a .FIELDS routine for the field definitions
*------------------------------------------------------------------------
* -----------------------------------------------------------------------
* <region name= Inserts>
    $INCLUDE  I_COMMON
    $INCLUDE  I_EQUATE
    $INCLUDE  I_Table
* </region>
*------------------------------------------------------------------------
    Table.name = 'SAMA.INSURANCE'
    Table.title = 'SAMA.INSURANCE'       ;* Screen title
    Table.stereotype = 'H'    ;* H, U, L, W or T
    Table.product = 'IN'      ;* Must be on EB.PRODUCT
    Table.subProduct = ''     ;* Must be on EB.SUB.PRODUCT
    Table.classification = 'INT'        ;* As per FILE.CONTROL
    Table.systemClearFile = 'Y'         ;* As per FILE.CONTROL
    Table.relatedFiles = ''   ;* As per FILE.CONTROL
    Table.isPostClosingFile = ''        ;* As per FILE.CONTROL
    Table.equatePrefix = 'EB.IN'        ;* Use to create I_F.EB.LOG.P
*------------------------------------------------------------------------
    Table.idPrefix = ''       ;* Used by EB.FORMAT.ID if set
    Table.blockedFunctions = ''         ;* Space delimeted list of blocke
    Table.trigger = ''        ;* Trigger field used for OPERATION style f
*------------------------------------------------------------------------

RETURN
 
*-----------------------------------------------------------------------------

END