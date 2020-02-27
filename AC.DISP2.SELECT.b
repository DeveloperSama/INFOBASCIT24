$PACKAGE EXM.TEST
SUBROUTINE AC.DISP2.SELECT
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_AC.DISP2.COMMON
*-----------------------------------------------------------------------------
    SEL.CMD = "SELECT ":FN.AC
    CALL EB.READLIST(SEL.CMD,SEL.LIST,'',NO.OF.REC,RET.CODE)
    CALL BATCH.BUILD.LIST('',LIST)
RETURN
END
