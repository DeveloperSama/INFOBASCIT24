$PACKAGE EXM.TEST
SUBROUTINE NOFILE.FT.ENQ.RTN(Y.ARR)
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
    $INSERT I_F.FUNDS.TRANSFER

*-----------------------------------------------------------------------------
    GOSUB INIT
    GOSUB OPENFILES
    GOSUB PROCESS
RETURN
INIT:
    FN.ACC ="F.ACCOUNT"
    F.ACC =""
    FN.CUS = "F.CUSTOMER"
    F.CUS =""
    FN.FT = "F.FUNDS.TRANSFER"
    F.FT =""
RETURN
OPENFILES:
    CALL OPF(FN.ACC,F.ACC)
    CALL OPF(FN.CUS,F.CUS)
    CALL OPF(FN.FT,F.FT)
RETURN
PROCESS:
    SEL.CMD ="SELECT ":FN.FT
    CALL EB.READLIST(SEL.CMD,SEL.LIST,"",NO.OF.RECORDS,RET.CODE)
    LOOP
        REMOVE Y.FT.ID FROM SEL.LIST SETTING POS
    WHILE Y.FT.ID:POS
        CALL F.READ(FN.FT,Y.FT.ID,R.FT.REC,F.FT,Y.FT.ERR)
        Y.DR.AC.ID=R.FT.REC<FT.DEBIT.ACCT.NO>
        Y.CR.AC.ID=R.FT.REC<FT.CREDIT.ACCT.NO>
        CALL F.READ(FN.ACC,Y.DR.AC.ID,R.AC.REC,F.ACC,Y.AC.ERR)
        Y.DR.AC.MNE=R.AC.REC<AC.MNEMONIC>
        Y.DR.CUS.ID=R.AC.REC<AC.CUSTOMER>
        CALL F.READ(FN.ACC,Y.CR.AC.ID,R.AC.REC,F.ACC,Y.AC.ERR)
        Y.CR.AC.MNE=R.AC.REC<AC.MNEMONIC>
        Y.CR.CUS.ID=R.AC.REC<AC.CUSTOMER>
        CALL F.READ(FN.CUS,Y.DR.CUS.ID,R.CUS.REC,F.CUS,Y.CUS.ERR)
        Y.DR.CUS.MNE=R.CUS.REC<EB.CUS.MNEMONIC>
        CALL F.READ(FN.CUS,Y.CR.CUS.ID,R.CUS.REC,F.CUS,Y.CUS.ERR)
        Y.CR.CUS.MNE=R.CUS.REC<EB.CUS.MNEMONIC>
        Y.ARR<-1>=Y.FT.ID:"*":Y.DR.AC.MNE:"*":Y.DR.CUS.MNE:"*":Y.CR.AC.MNE:"*":Y.CR.CUS.MNE
    REPEAT
RETURN
END
