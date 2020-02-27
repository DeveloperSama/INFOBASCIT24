PROGRAM READ.SEQ
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
*-----------------------------------------------------------------------------
    Y.SEQ.ID="SUMANA1"
    Y.DETAILS=" "
    X=" "
    Y.PATH="C:\env\R19\TAFJ\SEQUENCE"

    OPENSEQ Y.PATH, Y.SEQ.ID TO SEQ.PTR ELSE
        CREATE SEQ.PTR ELSE NULL
    END
   
    Y.WRITE.DETAILS="SUMANASRI":'*':"1000037"
    WRITESEQ Y.WRITE.DETAILS APPEND ON SEQ.PTR ELSE NULL
    CLOSESEQ SEQ.PTR
    OPENSEQ Y.PATH, Y.SEQ.ID TO SEQ.PTR ELSE
        CREATE SEQ.PTR ELSE NULL
    END
    LOOP
    WHILE X NE ""
        READSEQ Y.DETAILS FROM SEQ.PTR ELSE NULL
        PRINT Y.DETAILS
        X=FIELD(Y.DETAILS,'*',2)
        PRINT X
    REPEAT
    CLOSESEQ SEQ.PTR
END
