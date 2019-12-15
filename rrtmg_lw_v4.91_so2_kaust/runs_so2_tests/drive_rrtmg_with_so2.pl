#!/usr/bin/perl -w

# This driver runs RRTMG_LW for a series of cases 

$code = ("../build/rrtmg_lw_v4.91_linux_pgi");
@case_names =  glob("INPUT*GARAND*");

$ncases = @case_names;

foreach $i (@case_names) {
   print $i,"\n";
   system ("/bin/rm  OUTPUT_RRTM INPUT_RRTM");
   system ("cp $i INPUT_RRTM");
   $tag = substr($i,11);
   system ("$code");
   system ("mv OUTPUT_RRTM OUTPUT_RRTM.$tag");
}



