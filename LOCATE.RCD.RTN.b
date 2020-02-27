$PACKAGE EXM.TEST
SUBROUTINE LOCATE.RCD.RTN
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.ACCOUNT
*-----------------------------------------------------------------------------
    FN.ACC = "FBNK.ACCOUNT"
    F.ACC = ''

    DEBUG
    CALL OPF(FN.ACC,F.ACC)
    Y.ACCT.ID = 98345
    
    CALL F.READ(FN.ACC,Y.ACCT.ID,R.ACCOUNT,F.ACC,Y.ACCER)
    Y.OTHER.OFFICER = R.ACCOUNT<AC.OTHER.OFFICER>
    
*Locating the position of the other officer
    LOCATE '2001' IN Y.OTHER.OFFICER<1,1> SETTING Y.POS ELSE NULL
    PRINT Y.POS
    
*Replacing other officer
    Y.OTHER.OFFICER<1,Y.POS> = '9999'
    R.ACCOUNT<AC.OTHER.OFFICER> = Y.OTHER.OFFICER
    
    CALL F.WRITE(FN.ACC,Y.ACCT.ID,R.ACCOUNT)
    PRINT Y.OTHER.OFFICER
RETURN
END
