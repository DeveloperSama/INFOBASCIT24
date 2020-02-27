$PACKAGE EXM.TEST
SUBROUTINE ACCT.DSLIP.RTN1
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.CUSTOMER.ACCOUNT
*-----------------------------------------------------------------------------
    CUS.ACC.ERR=''
    FN.CUS.ACC='F.CUSTOMER.ACCOUNT'
    F.CUS.ACC=''
    CALL OPF(FN.CUS.ACC,F.CUS.ACC)
    
    CALL F.READ(FN.CUS.ACC,DSLIP.DATA,R.CUS.ACC,F.CUS.ACC,CUS.ACC.ERR)
    IF CUS.ACC.ERR="" THEN
        DSLIP.DATA=''
        DSLIP.DATA=R.CUS.ACC
        CONVERT @FM TO '*' IN DSLIP.DATA
    END
RETURN
END

