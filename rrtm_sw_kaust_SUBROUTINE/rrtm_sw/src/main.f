	program main
	
c	use rrtm_sw_routines, only : RRTM_SW, SEMISS, PBND

	real*8 SEMISS(29)
	real*8 PBND(1:12)
	real*8 ZMDL(1:12)
	real*8 PM(12)
	real*8 TM(12)
	
	integer :: IMMAX_B = -12, IAER = 0, IATM = 1, ISCAT = 0
	integer :: ISTRM = 2, ICLD = 0, IDELM = 0, ICOS = 0, JULDAT = 1
	real :: SZA = 10
	integer :: ISOLVAR = 0
	real*8 :: SOLVAR(29)

	integer :: IBMAX_B = -12
	integer :: NMOL = 7
	
	integer :: MUNITS = 0
	real :: RE = 6371
	real :: CO2MX = 330
	real :: REF_LAT = 15
	real :: H1F = 0.0
	real :: H2F = 60.0
	
	integer :: NOPRNT = 1
	
	data SEMISS/29 * 0.8/
	data SOLVAR/29 * 1/
	PBND = (/1000, 900, 800, 700, 600, 500, 400, 300, 200,100,10,1/)
	ZMDL = (/0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 60/)
	PM = (/1000, 900, 800, 700, 600, 500, 400, 300, 200, 100, 10, 1/)
	TM = (/300, 295, 290, 285, 280,275,270, 265, 260, 255, 250, 245/)
	
 	call RRTM_SW(IAER, IATM, ISCAT, ISTRM, IOUT, ICLD, IDELM,
     & ICOS, JULDAT, SZA, ISOLVAR, SOLVAR, SEMISS, IBMAX_B, NMOL,
     & MUNITS,RE,CO2MX,REF_LAT, H1F,H2F, 
     & PBND, 
     & IMMAX_B,
     & ZMDL,PM,TM,NOPRNT)
     
	end