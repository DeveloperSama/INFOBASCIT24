$PACKAGE EXM.TEST
SUBROUTINE BEFORE.AUTH.RTN
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.CUSTOMER
*-----------------------------------------------------------------------------
    Y.COLUMN=8
    Y.ROW=22
    N1='35.1'
    T1='A'
    INP.MSG='ENTER TEXT FOR CUSTOMER'
    CALL INP(INP.MSG,Y.COLUMN,Y.ROW,N1,T1)
    IF COMI= ' ' THEN
        CRT "NO TEXT ENTERED.PROCEEDING WITH OTHERS PROCESSING"
    END ELSE
        R.NEW(EB.CUS.TEXT)<1,-1>=COMI
    END
RETURN
END
