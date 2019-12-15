      module rrlw_kg10

      use parkind ,only : im => kind_im, rb => kind_rb

      implicit none
      save

!-----------------------------------------------------------------
! rrtmg_lw ORIGINAL abs. coefficients for interval 10
! band 10:  1330-1390 cm-1 (low key - h2o,ch4; high key - so2,ch4)
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
! selfrefo: real     
! forrefo : real     
!-----------------------------------------------------------------

      integer(kind=im), parameter :: no10  = 16

      real(kind=rb) :: fracrefao(no10,9)
      real(kind=rb) :: fracrefbo(no10,5)
      real(kind=rb) :: kao(9,5,13,no10)
      real(kind=rb) :: kbo(5,5,13:59,no10)
      real(kind=rb) :: selfrefo(10,no10)
      real(kind=rb) :: forrefo(4,no10)

!-----------------------------------------------------------------
! rrtmg_lw COMBINED abs. coefficients for interval 10
! band 10:  1330-1390 cm-1 (low key - h2o,ch4; high key - so2,ch4)
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
! selfref : real     
! forref  : real     
!
! absa    : real
! absb    : real
!-----------------------------------------------------------------

      integer(kind=im), parameter :: ng10  = 16

      real(kind=rb) :: fracrefa(ng10,9)
      real(kind=rb) :: fracrefb(ng10,5)
      real(kind=rb) :: ka(9,5,13,ng10) ,absa(585,ng10)
      real(kind=rb) :: kb(5,5,13:59,ng10) ,absb(1175,ng10)
      real(kind=rb) :: selfref(10,ng10)
      real(kind=rb) :: forref(4,ng10)

      equivalence (ka(1,1,1,1),absa(1,1)),(kb(1,1,13,1),absb(1,1))

      end module rrlw_kg10
