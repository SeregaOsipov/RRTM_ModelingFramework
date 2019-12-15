      module rrlw_kg12

      use parkind ,only : im => kind_im, rb => kind_rb

      implicit none
      save

!-----------------------------------------------------------------
! rrtmg_lw ORIGINAL abs. coefficients for interval 12
! band 12:  1480-1800 cm-1 (low - h2o; high - h2o)
!
! Initial version:  JJMorcrette, ECMWF, jul1998
! Revised: MJIacono, AER, jun2006
! Revised: MJIacono, AER, aug2008
!-----------------------------------------------------------------
!
!  name     type     purpose
!  ----   : ----   : ---------------------------------------------
!fracrefao: real    
!fracrefbo: real    
! kao     : real     
! kbo     : real     
! kao_mo2 : real     
! kbo_mo2 : real     
! selfrefo: real     
! forrefo : real     
!-----------------------------------------------------------------

      integer(kind=im), parameter :: no12 = 16

      real(kind=rb) , dimension(no12) :: fracrefao
      real(kind=rb) , dimension(no12) :: fracrefbo

      real(kind=rb) :: kao(5,13,no12)
      real(kind=rb) :: kbo(5,13:59,no12)
      real(kind=rb) :: kao_mo2(19,no12)
      real(kind=rb) :: kbo_mo2(19,no12)
      real(kind=rb) :: selfrefo(10,no12)
      real(kind=rb) :: forrefo(4,no12)

!-----------------------------------------------------------------
! rrtmg_lw COMBINED abs. coefficients for interval 12
! band 12:  1480-1800 cm-1 (low - h2o; high - h2o)
!
! Initial version:  JJMorcrette, ECMWF, jul1998
! Revised: MJIacono, AER, jun2006
! Revised: MJIacono, AER, aug2008
!-----------------------------------------------------------------
!
!  name     type     purpose
!  ----   : ----   : ---------------------------------------------
!fracrefa : real    
!fracrefb : real    
! ka      : real     
! kb      : real     
! ka_mo2  : real     
! kb_mo2  : real     
! selfref : real     
! forref  : real     
!
! absa    : real
! absb    : real
!-----------------------------------------------------------------

      integer(kind=im), parameter :: ng12 = 8

      real(kind=rb) , dimension(ng12) :: fracrefa
      real(kind=rb) , dimension(ng12) :: fracrefb

      real(kind=rb) :: ka(5,13,ng12)   , absa(65,ng12)
      real(kind=rb) :: kb(5,13:59,ng12), absb(235,ng12)
      real(kind=rb) :: ka_mo2(19,ng12)
      real(kind=rb) :: kb_mo2(19,ng12)
      real(kind=rb) :: selfref(10,ng12)
      real(kind=rb) :: forref(4,ng12)

      equivalence (ka(1,1,1),absa(1,1)),(kb(1,13,1),absb(1,1))

      end module rrlw_kg12
