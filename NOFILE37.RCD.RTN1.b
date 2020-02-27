$PACKAGE EXM.TEST
SUBROUTINE NOFILE37.RCD.RTN1(Y.ARR)
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
    $INSERT I_F.CUSTOMER.ACCOUNT
*-----------------------------------------------------------------------------
    GOSUB INIT
    GOSUB OPENFILES
    GOSUB PROCESS
RETURN
DEBUG
INIT:
    FN.ACC ="F.ACCOUNT"
    F.ACC =""
    FN.CUS = "F.CUSTOMER"
    F.CUS =""
    FN.CUS.ACC ="F.CUSTOMER.ACCOUNT"
    F.CUS.ACC =""
    
RETURN
OPENFILES:
 
    CALL OPF(FN.ACC,F.ACC)
    CALL OPF(FN.CUS,F.CUS)
    CALL OPF(FN.CUS.ACC, F.CUS.ACC)
RETURN
PROCESS:
    LOCATE "CUSTOMER.NO" IN D.FIELDS<1> SETTING CUS.POS THEN
        CUSTOMER.NO = D.RANGE.AND.VALUE<CUS.POS>
        
        CALL F.READ(FN.CUS,CUSTOMER.NO,R.CUS,F.CUS,CUS.ERR)
        Y.CUS.MNE= R.CUS<EB.CUS.MNEMONIC>
        CALL F.READ(FN.CUS.ACC,CUSTOMER.NO,R.CUS.ACC,F.CUS.ACC,CUS.ACC.ERR)
        AC.POS=""
        LOOP
            REMOVE ACC.ID FROM R.CUS.ACC SETTING AC.POS
        WHILE ACC.ID:AC.POS
            CALL F.READ(FN.ACC,ACC.ID,R.ACCOUNT,F.ACC,Y.ACC.ERR)
            Y.CUS.NUM=R.ACCOUNT<AC.CUSTOMER>
            Y.WOR.BAL=R.ACCOUNT<AC.WORKING.BALANCE>
            
            Y.ARR<-1>=Y.CUS.NUM:"*":Y.CUS.MNE:"*":Y.WOR.BAL:"*":ACC.ID
       
        REPEAT
        RETURN
    END