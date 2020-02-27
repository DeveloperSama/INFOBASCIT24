$PACKAGE EXM.TEST
SUBROUTINE FT.ADVICE.RTN(MAT HANDOFF.REC,ERR.MSG)
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.CUSTOMER
*-----------------------------------------------------------------------------
    Y.CUS.ID=0
    R.CUS.REC=" "
    FN.CUSTOMER='F.CUSTOMER'
    F.CUSTOMER=" "
    CALL OPF(FN.CUSTOMER,F.CUSTOMER)
    CUS.ID=HANDOFF.REC(2)<1>
    CALL F.READ(FN.CUSTOMER,CUS.ID,R.CUST,F.CUSTOMER,Y.ERR)
    HANDOFF.REC(9)<2>=R.CUST<EB.CUS.ADDRESS>
RETURN
END
