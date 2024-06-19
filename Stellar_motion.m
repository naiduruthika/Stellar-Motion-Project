% Stellar Motion Analysis

% Load data files
load starData
nObs = size(spectra, 1); % Number of observations

% Measurement parameters
lambdaStart = 630.02;   % Starting wavelength in nm
lambdaDelta = 0.14;     % Wavelength spacing in nm

% Calculate the end wavelength and create the wavelength array
lambdaEnd = lambdaStart + (nObs - 1) * lambdaDelta;
lambda = (lambdaStart:lambdaDelta:lambdaEnd);

% Extract the spectrum data for the second star
s = spectra(:, 6);

% Plotting the spectrum as a function of wavelength
figure;
plot(lambda, s, ".-");
xlabel("Wavelength (nm)");
ylabel("Intensity");
title("Star Spectrum");

% Find the minimum intensity value (H-alpha line) and its index
[sHa, idx] = min(s);
lambdaHa = lambda(idx); % Wavelength of the hydrogen alpha line

% Plot the H-alpha line on the spectrum
hold on;
plot(lambdaHa, sHa, "rs", 'MarkerSize', 8);
hold off;

% Calculate the redshift factor, z
z = (lambdaHa / 656.28) - 1;

% Calculate the radial velocity of the star in km/s
speed = z * 299792.458;

% Display the results
fprintf('Hydrogen alpha line wavelength: %.2f nm\n', lambdaHa);
fprintf('Redshift factor (z): %.6f\n', z);
fprintf('Radial velocity: %.2f km/s\n', speed);

