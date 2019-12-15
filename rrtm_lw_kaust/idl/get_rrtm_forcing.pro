pro get_rrtm_forcing, fn_so2,fn_no_so2
; reads  band fluxes (up and down) and heating rates from RRTM 
; from runs with and without SO2;
; calculates the forcing

read_rrtm, fn_so2,rrtm_struct_so2,nbands=1
read_rrtm, fn_no_so2,rrtm_struct_no_so2,nbands=1
rrtm_press = rrtm_struct_so2.pres
nlev_r = n_elements(rrtm_press)

rrtm_forc = rrtm_struct_so2
rrtm_forc.up = rrtm_struct_so2.up-rrtm_struct_no_so2.up
rrtm_forc.down = rrtm_struct_so2.down-rrtm_struct_no_so2.down
rrtm_forc.net = rrtm_struct_so2.net-rrtm_struct_no_so2.net
rrtm_forc.hr = rrtm_struct_so2.hr-rrtm_struct_no_so2.hr

title = '   PRESSURE      UP FORCING    DOWN FORCING    NET  FORCING     HEATING RATE FORCING'
units = '      mb            W/m2           W/m2            W/m2            degree/day'
openw, unit1,'get_rrtm_forcing.out',/get_lun
printf, unit1,title
printf, unit1,units
for il=nlev_r-1,1,-1 do begin
   printf, unit1, rrtm_press[il],rrtm_forc.up[il],rrtm_forc.down[il],rrtm_forc.net[il],rrtm_forc.hr[il],$
   format='(f10.4,f16.4,f14.4,f18.7,f19.5)'
endfor

free_lun, unit1

return

end
