$PACKAGE EXM.TEST
SUBROUTINE ACCT.DISP37
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.ACCOUNT
    $INSERT I_AC.DISP2.COMMON
*-----------------------------------------------------------------------------
    AC.ID="105171"
    CALL F.READ(FN.AC,AC.ID,R.AC.REC,F.AC,AC.ERR)
*  PRINT R.AC.REC<AC.WORKING.BALANCE>
    CALL GET.LOCAL.REF('ACCOUNT','CUST.GENDER',POS)
    NAME=R.AC.REC<AC.LOCAL.REF>
    NAME<1,POS>='N'
RETURN
END
