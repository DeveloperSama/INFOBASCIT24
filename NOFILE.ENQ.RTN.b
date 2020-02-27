$PACKAGE EXM.TEST
SUBROUTINE NOFILE.ENQ.RTN(Y.ARR)
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
RETURN
OPENFILES:
    CALL OPF(FN.ACC,F.ACC)
    CALL OPF(FN.CUS,F.CUS)
RETURN
PROCESS:
    SEL.CMD ="SELECT ":FN.ACC
    CALL EB.READLIST(SEL.CMD,SEL.LIST,"",NO.OF.RECORDS,RET.CODE)
    LOOP
        REMOVE Y.ACC.ID FROM SEL.LIST SETTING POS
    WHILE Y.ACC.ID:POS
        IF LEN(Y.ACC.ID) LT 6 THEN
            CALL F.READ(FN.ACC,Y.ACC.ID,R.ACCOUNT,F.ACC,Y.ACC.ERR)
            Y.CUS.NUM=R.ACCOUNT<AC.CUSTOMER>
            Y.WOR.BAL=R.ACCOUNT<AC.WORKING.BALANCE>
            CALL F.READ(FN.CUS,Y.CUS.NUM,R.CUSTOMER,F.CUS,Y.CUS.ERR)
            Y.CUS.NAME=R.CUSTOMER<EB.CUS.MNEMONIC>
            Y.ARR<-1>=Y.CUS.NUM:"*":Y.CUS.NAME:"*":Y.ACC.ID:"*":Y.WOR.BAL
        END
    REPEAT
RETURN
END
