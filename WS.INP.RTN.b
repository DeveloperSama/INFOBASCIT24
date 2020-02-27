$PACKAGE EXM.TEST
SUBROUTINE WS.INP.RTN
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.ACCOUNT
    $INSERT I_F.FUNDS.TRANSFER
    $INSERT I_F.CUSTOMER
*-----------------------------------------------------------------------------
    F.CUS="F.CUSTOMER"
    FN.CUS=""
    F.ACC="F.ACCOUNT"
    FN.ACC=""
    Y.DEB.ACC=R.NEW(FT.DEBIT.ACCT.NO)
    CALL OPF(F.ACC,Y.DEB.ACC,R.ACC,FN.ACC,Y.ACC.ERR)
    Y.CUS.ID=R.ACC<AC.CUSTOMER>
    Y.CATEGORY=R.ACC<AC.CATEGORY>
    CALL OPF(F.CUS,Y.CUS.ID,R.CUS,FN.CUS,Y.CUS.ERR)
    Y.SECTOR=R.CUS<EB.CUS.SECTOR>
    IF Y.SECTOR NE "1000" OR Y.SECTOR NE "1001" THEN
        ETEXT ="DEBIT ACCNT CUST IS NOT AN INDIV"
        CALL STORE.END.ERROR
    END
    IF Y.CATEGORY LT 6000 OR Y.CATEGORY GT 6999 THEN
        ETEXT="DEBIT ACCNT IS NOT A SAVINGS ACCNT"
        CALL STORE.END.ERROR
    END
RETURN
END
