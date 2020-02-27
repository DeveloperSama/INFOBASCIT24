$PACKAGE EXM.TEST

SUBROUTINE INP.RTN
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.FUNDS.TRANSFER
*-----------------------------------------------------------------------------
    Y.DEB.CUR=R.NEW(FT.DEBIT.CURRENCY)
    Y.CRD.CUR=R.NEW(FT.CREDIT.CURRENCY)
    IF Y.DEB.CUR NE Y.CRD.CUR THEN
        ETEXT='DEBIT ACCOUNT AND CREDIT ACCOUNT CURRENTLY MISMATCH'
        CALL STORE.END.ERROR
    END
RETURN
END
