$PACKAGE EXM.TEST
SUBROUTINE AUT.FIELD1.RTN
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.ACCOUNT

*-----------------------------------------------------------------------------
    DEBUG
    LOC.POS=''
*FIND THE POSITION OF LOCAL REFERENCE FIELD
    CALL GET.LOC.REF(ACCOUNT,ACCT.NUM.NUM,LOC.POS)
*FROM SELECT STATEMENTS
    SEL.CMD='SELECT FBNK.ACCOUNT WITH CURRENCY EQ USD'
    CALL EB.READLIST(SEL.CMD,SEL.LIST,'',NO.OF.REC,SEL.ERR)
    R.NEW(AC.LOCAL.REF)<1,LOC.POS>=NO.OF.REC
RETURN
END
