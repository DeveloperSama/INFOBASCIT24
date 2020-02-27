$PACKAGE EXM.TEST
SUBROUTINE JOINTHOLDER.RCD.RTN
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.ACCOUNT
*-----------------------------------------------------------------------------

    FN.ACC = "FBNK.ACCOUNT"
    F.ACC = ''
    Y.JOINT.HOLDER = ''
    Y.REL.CODE = ''
    Y.JOINT.NOTES =''

    DEBUG
    CALL OPF(FN.ACC,F.ACC)
    Y.ACCT.ID = 103381
    
    CALL F.READ(FN.ACC,Y.ACCT.ID,R.ACCOUNT,F.ACC,Y.ACCER)
    Y.JOINT.HOLDER = R.ACCOUNT<AC.JOINT.HOLDER>
    Y.REL.CODE = R.ACCOUNT<AC.RELATION.CODE>
    Y.JOINT.NOTES = R.ACCOUNT<AC.JOINT.NOTES>
       
    Y.HOLDER = DCOUNT(R.ACCOUNT<AC.JOINT.HOLDER>,@VM)
    PRINT Y.HOLDER
    
    Y.NOTES = DCOUNT(R.ACCOUNT<AC.JOINT.NOTES>,@VM)
    
*Locating the value in Joint holder and fetching Joint Notes's 2nd sub-value
    LOCATE '10000347' IN Y.JOINT.HOLDER<1,1> SETTING Y.POS THEN
        PRINT Y.JOINT.NOTES<1,Y.POS,2>
        
*Replacing the 2nd sub-value with a new value
        Y.JOINT.NOTES<1,Y.POS,2> = 'NOTES REPLACED'
        R.ACCOUNT<AC.JOINT.NOTES> = Y.JOINT.NOTES
    
*Printing the updated value
        CALL F.WRITE(FN.ACC,Y.ACCT.ID,R.ACCOUNT)
        PRINT Y.JOINT.NOTES<1,Y.POS,2>
        RETURN
    END
END
