      module rrlw_cld

      use parkind, only : rb => kind_rb

      implicit none
      save

!------------------------------------------------------------------
! rrtmg_lw cloud property coefficients

! Revised: MJIacono, AER, jun2006
! Revised: MJIacono, AER, aug2008
!------------------------------------------------------------------

!  name     type     purpose
! -----  :  ----   : ----------------------------------------------
! abscld1:  real   : 
! absice0:  real   : 
! absice1:  real   : 
! absice2:  real   : 
! absice3:  real   : 
! absliq0:  real   : 
! absliq1:  real   : 
!------------------------------------------------------------------

      real(kind=rb) :: abscld1
      real(kind=rb) , dimension(2) :: absice0
      real(kind=rb) , dimension(2,5) :: absice1
      real(kind=rb) , dimension(43,17) :: absice2
      real(kind=rb) , dimension(46,17) :: absice3
      real(kind=rb) :: absliq0
      real(kind=rb) , dimension(58,17) :: absliq1

      end module rrlw_cld

