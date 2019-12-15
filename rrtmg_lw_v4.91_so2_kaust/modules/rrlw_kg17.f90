      module rrlw_kg17

      use parkind ,only : im => kind_im, rb => kind_rb

      implicit none
      save

!-----------------------------------------------------------------
! rrtmg_lw ORIGINAL abs. coefficients for interval 17
! band 17:  2600-3000 cm-1 (low - h2o,ch4; high - nothing)
!
! Initial version:  JJMorcrette, ECMWF, jul1998
! Revised: MJIacono, AER, jun2006
! Revised: MJIacono, AER, aug2008
!-----------------------------------------------------------------
!
!  name     type     purpose
!  ----   : ----   : ---------------------------------------------
!fracrefao: real    
! kao     : real     
! kbo     : real     
! selfrefo: real     
! forrefo : real     
!-----------------------------------------------------------------

      integer(kind=im), parameter :: no17 = 16

      real(kind=rb) , dimension(no17) :: fracrefbo

      real(kind=rb) :: fracrefao(no17,9)
      real(kind=rb) :: kao(9,5,13,no17)
      real(kind=rb) :: kbo(5,13:59,no17)
      real(kind=rb) :: selfrefo(10,no17)
      real(kind=rb) :: forrefo(4,no17)

!-----------------------------------------------------------------
! rrtmg_lw COMBINED abs. coefficients for interval 17
! band 17:  2600-3000 cm-1 (low - h2o,ch4; high - nothing)
!
! Initial version:  JJMorcrette, ECMWF, jul1998
! Revised: MJIacono, AER, jun2006
! Revised: MJIacono, AER, aug2008
!-----------------------------------------------------------------
!
!  name     type     purpose
!  ----   : ----   : ---------------------------------------------
!fracrefa : real    
! ka      : real     
! kb      : real     
! selfref : real     
! forref  : real     
!
! absa    : real
! absb    : real
!-----------------------------------------------------------------

      integer(kind=im), parameter :: ng17 = 2

      real(kind=rb) , dimension(ng17) :: fracrefb

      real(kind=rb) :: fracrefa(ng17,9)
      real(kind=rb) :: ka(9,5,13,ng17) ,absa(585,ng17)
      real(kind=rb) :: kb(5,13:59,ng17), absb(235,ng17)
      real(kind=rb) :: selfref(10,ng17)
      real(kind=rb) :: forref(4,ng17)

      equivalence (ka(1,1,1,1),absa(1,1)), (kb(1,13,1),absb(1,1))

      end module rrlw_kg17

