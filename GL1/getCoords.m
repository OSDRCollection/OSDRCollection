function [Xr, Yr, Zr] = getCoords(LAT, LON, HEI)
    % Reformat coordinates for conversion
    LAT = LAT(1) + LAT(2)/60 + LAT(3)/3600;
    LON = LON(1) + LON(2)/60 + LON(3)/3600;
    % Obtain cartesian coordinates
    [Xr, Yr, Zr] = geo2cartJMBF(LAT, LON, HEI, 5);
end