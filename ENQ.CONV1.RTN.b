$PACKAGE EXM.TEST
SUBROUTINE ENQ.CONV1.RTN
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_ENQUIRY.COMMON
    $INSERT I_F.ACCOUNT
    $INSERT I_F.CURRENCY

*-----------------------------------------------------------------------------
    GOSUB INIT
    GOSUB PROCESS
RETURN
INIT:
    FN.CUR='F.CURRENCY'
    F.CUR=''
    Y.AC.CUR=R.RECORD<AC.CURRENCY>
    R.CUR.REC=''
    Y.ERR=''
    CALL OPF(FN.CUR,F.CUR)
RETURN
PROCESS:
    IF Y.AC.CUR NE LCCY THEN
        CALL F.READ(FN.CUR,Y.AC.CUR,R.CUR.REC,F.CUR,Y.ERR)
        O.DATA=R.CUR.REC<EB.CUR.MID.REVAL.RATE,1>*O.DATA
    END
RETURN
END

