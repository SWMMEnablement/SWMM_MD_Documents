      SUBROUTINE CHECKSTCH(ELSTA,STCH,NUMST,WHICH)
CIM created by C. Moore to check stch against station inputs
CIM called by GETCUR   9/8/00
      INCLUDE 'TAPES.INC'
      INCLUDE 'Contr.inc'
C#### WCH, 2/7/95.  INCREASE DIMENSION FROM 100 TO 300.
      PARAMETER (NXSPTS=100)
      DIMENSION ELSTA(2,NXSPTS)
      CHARACTER*5 WHICH
C FIRST FIND THE CLOSEST
      DISTMIN = 9999999999.9
      DO I = 1,NUMST
      DIST = ABS(STCH-ELSTA(2,I))
      IF (DIST.LT.DISTMIN) THEN
      DISTMIN = DIST
      ISTA = I
      ENDIF
      enddo
      IF (DISTMIN.EQ.0.0) RETURN   !GOT A MATCH
      IF (DISTMIN.LT.1.0) THEN
C       WITHIN A FOOT, MAKE IT EQUAL, GIVE A WARNING
      STCH = ELSTA(2,ISTA)
      IF (METRIC.EQ.1) THEN
      WRITE(N6,7000) WHICH,DISTMIN,'FT'
      ELSE
      WRITE(N6,7000) WHICH,DISTMIN,'M '
      ENDIF
      RETURN
      ENDIF
c  if here didnt find
      WRITE(N6,7060)WHICH
      NSTOP = NSTOP + 1
      RETURN
 7000 FORMAT(/,' ===? WARNING ! ',A5,' DOES NOT EQUAL STATION OF ONE ',
     1'OF THE INPUT STATIONS.  WAS MOVED ',F10.3,1X,A3,' TO EQUAL',
     2' AN INPUT STATION')
 7060 FORMAT(/,' ===> ERROR !!! ',A5,' DOES NOT EQUAL STATION OF ONE ',
     1'OF THE INPUT STATION ELEVATION POINTS')
      END SUBROUTINE CHECKSTCH
