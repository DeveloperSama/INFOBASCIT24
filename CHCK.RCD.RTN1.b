$PACKAGE EXM.TEST
SUBROUTINE CHCK.RCD.RTN1
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.CUSTOMER
    
    Y.ID = APPLICATION:PGM.VERSION
    CURR.OPERATOR = OPERATOR
  
    IF Y.ID EQ 'CUSTOMER,CUS377' AND V$FUNCTION = 'A' THEN
        Y.CUS.SEC=  R.NEW(EB.CUS.SECTOR)
        IF Y.CUS.SEC EQ 1001 THEN
            R.NEW(EB.CUS.LANGUAGE)= '1'
        END ELSE
            R.NEW(EB.CUS.LANGUAGE)= '2'
            
        END
        ETEXT = "ACCESS DENIED"
        CALL STORE.END.ERROR

    END

RETURN
END
 