      SUBROUTINE SHELL (IA,N,NROW,NCOL,JK,ID)
C	RAIN BLOCK
C	CALLED AT LINE 1040 IN RAIN
C=======================================================================
C     SEE COMMENTS FOR SUBROUTINE SHELR
C=======================================================================
      INCLUDE 'TAPES.INC'
      DIMENSION IA(3*LSTORM),ID(3),JK(3)
C=======================================================================
C     FIND M=ONE LESS THAN LEAST POWER OF 2.GT.N
C=======================================================================
      M = 0
   10 M = M + M + 1
      IF (M-N) 10,20,20
C=======================================================================
C  20 OUTER LOOP. .HALVE M.
C=======================================================================
   20 M = M/2
C=======================================================================
C     TEST FOR END OF OUTER LOOP.
C=======================================================================
      IF (M) 70,70,30
C=======================================================================
C  30 FIND LIMIT FOR MIDDLE LOOP
C=======================================================================
   30 K=N-M
C=======================================================================
C     BEGIN MIDDLE LOOP
C=======================================================================
      DO 60 J = 1,K
C=======================================================================
C     SETUP FOR INNER LOOP
C=======================================================================
      I = J
C=======================================================================
C  40 MIDDLE AND INNER LOOP . . COMPARE.
C=======================================================================
   40 L     = I+M
      LJ    = 1
   23 IAD   = NROW*(JK(LJ)-1)
      L1    = L+IAD
      I1    = I+IAD
      IDEC  = ID(LJ)
      ITES2 = IA(L1)
      ITES1 = IA(I1)
      GO TO (21,22),IDEC
   21 IF (ITES1-ITES2) 60,61,50
   22 IF (ITES1-ITES2) 50,61,60
   61 LJ = LJ+1
      IF (JK(LJ)) 60,60,23
C=======================================================================
C  50 NOT IN SEQUENCE, SO SWAP
C=======================================================================
   50 DO 80 IP = 1,NCOL
      NROCO    = NROW*(IP-1)
      NI       = NROCO+I
      NL       = NROCO+L
      ITEMP    = IA(NI)
      IA(NI)   = IA(NL)
   80 IA(NL)   = ITEMP
C=======================================================================
C     GO DOWN INNER LOOP . . ONLY IF SWAP
C=======================================================================
      I = I-M
C=======================================================================
C     TEST FOR END OF INNER LOOP
C=======================================================================
      IF (I) 60,60,40
C=======================================================================
C     END OF INNER AND MIDDLE LOOP.
C=======================================================================
   60 CONTINUE
      GO TO 20
C=======================================================================
C     SORT COMPLETE
C=======================================================================
   70 RETURN
      END
