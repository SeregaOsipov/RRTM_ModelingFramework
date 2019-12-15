
;-------------------------------------------------------
PRO read_rrtm,filename,rrtm,nbands=nbands
;-------------------------------------------------------

if (not keyword_set(nbands)) then nbands = 17

; Count number of levels in output file
get_lun,unit_lw
openr,unit_lw,filename

a='' & wvnline = ''
readf,unit_lw,wvnline
readf,unit_lw,a
readf,unit_lw,a
readf,unit_lw,a
nlevels = fix(strmid(a,0,5))+1 

rrtm = create_struct('wvn1',lonarr(nbands),'wvn2',lonarr(nbands),$
	'pres',dblarr(nlevels),$
	'nlevs',nlevels,'up',dblarr(nlevels,nbands),$
	'down',dblarr(nlevels,nbands),$
	'net',dblarr(nlevels,nbands),'hr',dblarr(nlevels,nbands),$
	'filename','')

point_lun,unit_lw,0

rrtm.filename = filename

for i=0,nbands-1 do begin
	a=''  &  wvnline = ''

	readf,unit_lw,wvnline
	if (strmid(wvnline,2,3) eq 'Mod') then begin
		free_lun,unit_lw
		return
	endif

	rrtm.wvn1(i) = strmid(wvnline,14,6)
	rrtm.wvn2(i) = strmid(wvnline,23,6)
	
	readf,unit_lw,a
	readf,unit_lw,a
	readrad = dblarr(6,nlevels)

	readf,unit_lw,readrad

	rrtm.pres = reverse(reform(readrad(1,*)))
	rrtm.up(*,i) = reverse(reform(readrad(2,*)))
	rrtm.down(*,i) = reverse(reform(readrad(3,*)))
	rrtm.net(*,i) = reverse(reform(readrad(4,*)))
	rrtm.hr(*,i) = reverse(reform(readrad(5,*)))

	readf,unit_lw,a
endfor

free_lun,unit_lw
return
end
