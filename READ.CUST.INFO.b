
PROGRAM READ.CUST.INFO
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.CUSTOMER
*-----------------------------------------------------------------------------
    filevar="FBNK.CUSTOMER"
    PRINT "INPUT CUSTOMER NUMBER"
    INPUT id
    OPEN filevar TO dfile ELSE ABORT 201, "error"
    READ record FROM dfile, id SETTING errorNumber ON ERROR
        PRINT errorNumber
    END THEN
        PRINT "rECORD READ"
    END ELSE
        PRINT "NO RECORD"
    END
END
