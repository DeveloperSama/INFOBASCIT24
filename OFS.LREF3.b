$PACKAGE EXM.TEST
SUBROUTINE OFS.LREF3
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.CUSTOMER
    $INSERT I_F.DE.ADDRESS

    GOSUB INIT
    GOSUB OPENFILES
    GOSUB PROCESS
RETURN

INIT:
    FN.CUS = 'F.CUSTOMER'
    F.CUS = ''
    Y.ADDRESS = ''
RETURN

OPENFILES:
    CALL OPF(FN.CUS,F.CUS)
RETURN
PROCESS:
    DEBUG
    IF R.OLD(1) = '' THEN
        Y.DE.ADDRESS.ID = ID.COMPANY:'_C':ID.NEW:'_PRINT.2'
        CALL F.READ(FN.CUS,CUS.ID,R.CUS.REC,F.CUS,CUS.ERR)
        CALL GET.LOC.REF('CUSTOMER','CUST.GENDER',POS)
        Y.ADDRESS = R.NEW(EB.CUS.LOCAL.REF)<1,POS>

        Y.OFS.REC="DE.ADDRESS,,SUMANA.1/123123,":Y.DE.ADDRESS.ID:",SHORT.NAME=":R.NEW(EB.CUS.SHORT.NAME):",NAME.1=":R.NEW(EB.CUS.NAME.1):",NAME.2=":R.NEW(EB.CUS.NAME.2):", STREET.ADDR=":Y.ADDRESS

        OFS.MSG.ID=""
        OFS.SOURCE.ID="TEST37.TELNET"
        OPTIONS=""
    
        CALL OFS.POST.MESSAGE (Y.OFS.REC, OFS.MSG.ID, OFS.SOURCE.ID, OPTIONS)
        CALL JOURNAL.UPDATE("")
    END

RETURN
END
END
