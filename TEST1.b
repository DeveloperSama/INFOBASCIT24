* @ValidationCode : MjotMzExMjQ2Nzc2OkNwMTI1MjoxNTc4OTk1MjUyNjk0OnN1c2FtYTotMTotMTowOjA6ZmFsc2U6Ti9BOlIxOV9BTVIuMDotMTotMQ==
* @ValidationInfo : Timestamp         : 14 Jan 2020 15:17:32
* @ValidationInfo : Encoding          : Cp1252
* @ValidationInfo : User Name         : susama
* @ValidationInfo : Nb tests success  : N/A
* @ValidationInfo : Nb tests failure  : N/A
* @ValidationInfo : Rating            : N/A
* @ValidationInfo : Coverage          : N/A
* @ValidationInfo : Strict flag       : N/A
* @ValidationInfo : Bypass GateKeeper : false
* @ValidationInfo : Compiler Vers5625ion  : R19_AMR.0
$PACKAGE EXM.TEST
SUBROUTINE TEST1
    
    
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------

*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
    $INSERT I_F.CUSTOMER
*-----------------------------------------------------------------------------
    GOSUB INIT
    GOSUB OPENFILES
    GOSUB PROCESS
RETURN

INIT:
    FN.CUS = "FBNK.CUSTOMER"
    F.CUS = " "
    Y.CUS.ID = "1000033"
    Y.NATIONALITY = " "
    Y.MNEMONIC = " "
    R.CUSTOMER =  " "
    Y.ERR = " "
RETURN
OPENFILES:
    CALL OPF(FN.CUS,F.CUS)
RETURN
PROCESS:
    CALL F.READ(FN.CUS,F.CUS,Y.CUS.ID,Y.ERR,R.CUSTOMER)
    Y.NATIONALITY= R.CUSTOMER<EB.CUS.NATIONALITY>
    Y.MNEMONIC= R.CUSTOMER<EB.CUS.MNEMONIC>
    PRINT " "
    PRINT "CUSTOMER ID IS  :": Y.CUS.ID
    PRINT "NATIONALITY  IS  :": Y.NATIONALITY
    PRINT "MNEMONIC  IS  :": Y.MNEMONIC
RETURN
END
END
