#!/usr/bin/perl -w

# This driver runs RRTM for a series of cases 

$code = ("rrtmg_sw_v3.92_linux_pgi");
@case_names =  glob("INPUT*GARAND*sza*0");

$ncases = @case_names;

foreach $i (@case_names) {
   print $i,"\n";
   system ("/bin/rm  OUTPUT_RRTM INPUT_RRTM");
   system ("cp $i INPUT_RRTM");
   $tag = substr($i,11);
   system ("$code");
   system ("mv OUTPUT_RRTM OUTPUT_RRTM.$tag");
}



