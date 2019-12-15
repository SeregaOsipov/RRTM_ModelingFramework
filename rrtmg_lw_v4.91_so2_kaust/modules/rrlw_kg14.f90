      module rrlw_kg14

      use parkind ,only : im => kind_im, rb => kind_rb

      implicit none
      save

!-----------------------------------------------------------------
! rrtmg_lw ORIGINAL abs. coefficients for interval 14
! band 14:  2080-2250 cm-1 (low - h2o,n2o; high - nothing)
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
! kao_mco2: real     
! kao_mco : real     
! kbo_mo3 : real     
! selfrefo: real     
! forrefo : real     
!-----------------------------------------------------------------

      integer(kind=im), parameter :: no14 = 16

      real(kind=rb) , dimension(no14) :: fracrefbo

      real(kind=rb) :: fracrefao(no14,9)
      real(kind=rb) :: kao(9,5,13,no14)
      real(kind=rb) :: kao_mco2(9,19,no14)
      real(kind=rb) :: kao_mco(9,19,no14)
      real(kind=rb) :: kbo_mo3(19,no14)
      real(kind=rb) :: selfrefo(10,no14)
      real(kind=rb) :: forrefo(4,no14)

!-----------------------------------------------------------------
! rrtmg_lw COMBINED abs. coefficients for interval 14
! band 14:  2080-2250 cm-1 (low - h2o,n2o; high - nothing)
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
! ka_mco2 : real     
! ka_mco  : real     
! kb_mo3  : real     
! selfref : real     
! forref  : real     
!
! absa    : real
!-----------------------------------------------------------------

      integer(kind=im), parameter :: ng14 = 4

      real(kind=rb) , dimension(ng14) :: fracrefb

      real(kind=rb) :: fracrefa(ng14,9)
      real(kind=rb) :: ka(9,5,13,ng14) ,absa(585,ng14)
      real(kind=rb) :: ka_mco2(9,19,ng14)
      real(kind=rb) :: ka_mco(9,19,ng14)
      real(kind=rb) :: kb_mo3(19,ng14)
      real(kind=rb) :: selfref(10,ng14)
      real(kind=rb) :: forref(4,ng14)

      equivalence (ka(1,1,1,1),absa(1,1))

      end module rrlw_kg14
