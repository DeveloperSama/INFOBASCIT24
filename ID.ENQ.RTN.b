$PACKAGE EXM.TEXT
SUBROUTINE ID.ENQ.RTN
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.ENQUIRY
*-----------------------------------------------------------------------------
    IF APPLICATION NE 'ENQUIRY' THEN RETURN
    IF COMI THEN
*ID.NEW WOULD NOT HAVE BEEN SET NOW
        IF COMI[1,1] NE '%' AND FIELD(COMI, '-' ,2)[1,4] NE 'LIST' THEN
            COMI='THE.TRG.' :COMI
*CONCATENATE THE.TRG BEFORE COMI
            IF LEN(COMI) GT 30 THEN
                E="THESYS TRAINING RESTRICTS ID LENGTH TO 30 CHARACTERS"
                CALL ERR
                MESSAGE='REPEAT'
                V$ERROR=1
            END
        END
    END
RETURN
    
END
