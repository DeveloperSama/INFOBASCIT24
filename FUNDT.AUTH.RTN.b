$PACKAGE EXM.TEST
SUBROUTINE FUNDT.AUTH.RTN
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.FUNDS.TRANSFER

*-----------------------------------------------------------------------------
    Y.FILE.NAME="TRG.FG.INTERFACE"
    Y.FILE.ID=ID.NEW
    OPENSEQ Y.FILE.NAME,Y.FILE.ID TO Y.FILE.PTR ELSE
        CREATE Y.FILE.PTR ELSE
            ETEXT="UNABLE TO CREATE RECORD IN FILE"
            CALL STORE.END.ERROR
        END
    END
    Y.STRING.TO.BE.WRITTEN=R.NEW(FT.DEBIT.ACCT.NO):" ":R.NEW (FT.DEBIT.CURRENCY)
    Y.STRING.TO.BE.WRITTEN:=" "R.NEW(FT.CREDIT.ACCT.NO):" ":R.NEW (FT.DEBIT.VALUE.DATE)
    Y.STRING.TO.BE.WRITTEN:=" "R.NEW(FT.DEBIT.AMOUNT):" ":R.NEW (FT.DEBIT.CURRENCY)
    WRITESEQ Y.STRING.TO.BE.WRITTEN TO Y.FILE.PTR ELSE
        ETEXT="UNAABLE TO WRITE TO THE FILE"
        CALL STORE.END.ERRORERROR
    END
RETURN
END
