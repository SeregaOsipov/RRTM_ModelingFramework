C     path:      $Source$
C     author:    $Author: jdelamer $
C     revision:  $Revision: 11535 $
C     created:   $Date: 2001-10-11 13:53:22 -0400 (Thu, 11 Oct 2001) $

	parameter (mxlay = 203, nbands = 29)
	parameter (ib1 = 16, ib2 = 29)
    	parameter (mg = 16)
	parameter (mxstr = 16)
	
    	PARAMETER (MXMOL = 38)
    	PARAMETER (MAXINPX=35)
    	PARAMETER (MAXXSEC=4)

      COMMON /BANDS/     WAVENUM1(IB1:IB2),
     &                   WAVENUM2(IB1:IB2),
     &                   DELWAVE(IB1:IB2)
