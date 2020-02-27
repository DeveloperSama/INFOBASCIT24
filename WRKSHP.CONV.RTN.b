$PACKAGE EXM.TEST
SUBROUTINE WRKSHP.CONV.RTN
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
    Y.WRK.BAL=R.RECORD<AC.WORKING.BALANCE>
    IF Y.WRK.BAL GT 1000 THEN
        O.DATA = "SUFFICIENT FUNDS"
    END ELSE
        IF Y.WRK.BAL GT 0 THEN
            O.DATA= "CRITICAL FUNDS"
        END ELSE
            O.DATA="INSUFFICIENT FUNDS"
        END
    END
END
