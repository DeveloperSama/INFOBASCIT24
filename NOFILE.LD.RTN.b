$PACKAGE EXM.TEST
SUBROUTINE NOFILE.LD.RTN(Y.ARR)
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_ENQUIRY.COMMON
    $INSERT I_F.CUSTOMER
    $INSERT I_F.LD.LOANS.AND.DEPOSITS
*-----------------------------------------------------------------------------

    GOSUB INIT
    GOSUB OPENFILES
    GOSUB PROCESS

INIT:
    FN.LD = "F.LD.LOANS.AND.DEPOSITS"
    F.LD = ""
    FN.CUS = "F.CUSTOMER"
    F.CUS = ""
RETURN
OPENFILES:
    CALL OPF(FN.LD,F.LD)
    CALL OPF(FN.CUS,F.CUS)
    
PROCESS:
    SEL.CMD = "SELECT ":FN.LD
    CALL EB.READLIST(SEL.CMD, SEL.LIST, "", NO.OF.RECORDS, RET.CODE)
    LOOP
        REMOVE Y.LD.ID FROM SEL.LIST SETTING POS
    WHILE Y.LD.ID:POS
        CALL F.READ(FN.LD, Y.LD.ID, R.LD, F.LD, Y.LD.ERR)
        Y.CUS.ID = R.LD<LD.CUSTOMER.ID>
        CALL F.READ(FN.CUS, Y.CUS.ID, R.CUS, F.CUS, Y.CUS.ERR)
        Y.CUS.NAME = R.CUS<EB.CUS.MNEMONIC>
        Y.ARR<-1> = Y.LD.ID:"*":Y.CUS.ID:"*":Y.CUS.NAME
    REPEAT
RETURN
END
