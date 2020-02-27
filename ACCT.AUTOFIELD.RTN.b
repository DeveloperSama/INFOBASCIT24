$PACKAGE EXM.TEST
SUBROUTINE ACCT.AUTOFIELD.RTN
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.ACCOUNT
*-----------------------------------------------------------------------------
    DEBUG
    FN.CUSTOMER="FBNK.CUSTOMER"
    F.CUSTOMER=" "
    Y.CUS.ID=R.NEW(AC.CUSTOMER)
    Y.AC.OFFICER=R.NEW(AC.ACCOUNT.OFFICER)
    CALL OPF(FN.CUSTOMER,F.CUSTOMER)
    CALL F.READ(FN.CUSTOMER,Y.CUS.ID,R.CUSTOMER,F.CUSTOMER,Y.CUS.ERR)
    Y.CUS.SECTOR=R.CUSTOMER<EB.CUS.SECTOR>
    IF Y.CUS.SECTOR EQ 1001 THEN
        R.NEW(AC.ACCOUNT.OFFICER)=1
    END ELSE
        R.NEW(AC.ACCOUNT.OFFICER)=2
    END
RETURN
END
