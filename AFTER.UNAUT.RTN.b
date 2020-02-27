$PACKAGE EXM.TEST
SUBROUTINE AFTER.UNAUT.RTN
    
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    
    $INSERT I_F.FUNDS.TRANSFER

*-----------------------------------------------------------------------------
    IF APPLICATION ="FUNDS.TRANSFER" AND PGM.VERSION=",PARENT" AND V$FUNCTION="I" THEN
        INPUT.BUFFER=C.U:" ":APPLICATION:",CHILD":" I " : C.F
    END
RETURN
END
