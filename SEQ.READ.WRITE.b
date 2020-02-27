PROGRAM SEQ.READ.WRITE
*-----------------------------------------------------------------------------
*
*-----------------------------------------------------------------------------
* Modification History :
*-----------------------------------------------------------------------------
    $INSERT I_COMMON
    $INSERT I_EQUATE
*-----------------------------------------------------------------------------

    Y.SEQ.ID="ABC123"
    Y.DETAILS=""
    Y.PATH="C:\env\R19\TAFJ\SEQUENCE"
    OPENSEQ Y.PATH,Y.SEQ.ID TO SEQ.PTR ELSE
        CREATE SEQ.PTR ELSE NULL
    END
    Y.WRITE.DETAILS="MIRA":':':"100923":':':"AVANY"
    WRITESEQ Y.WRITE.DETAILS ON SEQ.PTR ELSE NULL
    CLOSESEQ SEQ.PTR
    OPENSEQ Y.PATH,Y.SEQ.ID TO SEQ.PTR ELSE
        CREATE SEQ.PTR ELSE NULL
    END
    READSEQ Y.DETAILS FROM SEQ.PTR ELSE NULL
    PRINT Y.DETAILS
    CLOSESEQ SEQ.PTR
    X=FIELD(Y.WRITE.DETAILS,":",-1,2)
    PRINT X
END
