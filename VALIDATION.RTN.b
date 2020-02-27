$PACKAGE EXM.TEST
SUBROUTINE VALIDATION.RTN
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.FUNDS.TRANSFER
*-----------------------------------------------------------------------------
    IF COMI>1000 THEN
        ETEXT="NOT ALLOWED TO TRANSFER AMOUNT MORE THAN 1000/-"
        CALL STORE.END.ERROR
    END
RETURN
END
