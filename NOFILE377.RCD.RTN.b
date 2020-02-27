$PACKAGE EXM.TEST
SUBROUTINE NOFILE377.RCD.RTN(Y.ARR)
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------

    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_ENQUIRY.COMMON
    $INSERT I_F.ACCOUNT
    $INSERT I_F.CUSTOMER
    $INSERT I_F.CUSTOMER.ACCOUNT
*-----------------------------------------------------------------------------
    GOSUB INIT
    GOSUB OPENFILES
    GOSUB PROCESS
RETURN
DEBUG
INIT:
    FN.ACC ="F.ACCOUNT"
    F.ACC =""
    FN.CUS = "F.CUSTOMER"
    F.CUS =""
    FN.CUS.ACC ="F.CUSTOMER.ACCOUNT"
    F.CUS.ACC =""
    
RETURN
OPENFILES:
 
    CALL OPF(FN.ACC,F.ACC)
    CALL OPF(FN.CUS,F.CUS)
    CALL OPF(FN.CUS.ACC, F.CUS.ACC)
RETURN
PROCESS:
    LOCATE "SECTOR" IN D.FIELDS<1> SETTING SECTOR.POS THEN
        SECTOR = D.RANGE.AND.VALUE<SECTOR.POS>
        IF SECTOR EQ 1001 THEN
            PRINT 'SUMANA'
        END
