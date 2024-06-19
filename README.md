# Stellar Motion Project

This MATLAB project analyzes the motion of a star using its spectral data. Stellar motion is the movement of stars across the sky. A star which is light years away from the Earth, can be detected by a light coming from it. This light is split into it's wavelengths through diffraction grating. The characteristic spectrum shows intensity of light at each wavelength. The hydrogen present in the star absorbs the light, which can be observed as the hydrogen alpha line in the spectrum. 

## Files
starData.mat: The dataset containing spectral data.

Star_spectrum.png: The resultant plot depicts the hydrogen alpha line.

stellar_motion.m: The MATLAB script that processes the data and plots the results.

## How to Run
1. Ensure MATLAB is installed on your machine.
2. Load the dataset and run the script.
3. Observe the hydrogen alpha line in the plot.
4. Calculate the redshift factor using the hydrogen absorption wavelength.
5. Calculate the radial velocity by multiplying speed of light with the redshift factor.
6. Change the column number of the spectrum matrix, to observe spectra of different stars.
