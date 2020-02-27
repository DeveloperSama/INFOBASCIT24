$PACKAGE EXM.TEST
SUBROUTINE AFTER.UNAUT.RTN.1
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.FUNDS.TRANSFER

*-----------------------------------------------------------------------------
    IF V$FUNCTION = "I" THEN
        CALL EB.SET.NEW.TASK("FUNDS.TRANSFER,CHILD I F3")
    END
RETURN
END
