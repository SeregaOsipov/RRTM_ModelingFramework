# RRTM_ModelingFramework
This repository contains the codes for the standalone column radiative transfer modeling framework.
It includes the RRTM code (developed by AER) and MATLAB routines. The framework is flexible and can be used to study the radiative effects (forcing) of trace gases, aerosols, surface albedo.

The original RRTM code is available from AER website http://rtweb.aer.com/rrtm_frame.html
This RRTM code was modified to include the SO2 effects. It was also minorly modified to provides the paths to the files as the command line arguments to allow the parallel support in Matlab's parfor loop.

The Matlab scripts will be added soon.
The Matlab scripts provide flexible setup of the atmospheric profile, surface albedo and aerosol optical properties calculations.

The framework was used in the several scientific papers such as:
1. Osipov et al., Diurnal cycle of the dust instantaneous direct radiative forcing over the Arabian Peninsula. https://doi.org/10.5194/acp-15-9537-2015
2. Mok et al., Impacts of brown carbon from biomass burning on surface UV and ozone photochemistry in the Amazon Basin. https://doi.org/10.1038/srep36940
