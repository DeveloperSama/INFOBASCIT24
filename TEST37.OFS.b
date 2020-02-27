$PACKAGE EXM.TEST
SUBROUTINE TEST37.OFS
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    DEBUG
    OFS.STR = 'FUNDS.TRANSFER,FT37/I/PROCESS,SUMANA.1/123123,,TRANSACTION.TYPE=AC,DEBIT.ACCT.NO=92169,DEBIT.CURRENCY=USD,DEBIT.AMOUNT=300,CREDIT.ACCT.NO=92134,CREDIT.CURRENCY=USD'
    OFS.SRC = 'TEST37.TELNET'
    OFS.MSG.ID = ''
    OPTIONS = ''
    CALL OFS.POST.MESSAGE(OFS.STR,OFS.MSG.ID,OFS.SRC,OPTIONS)
    CALL JOURNAL.UPDATE("")
RETURN
END