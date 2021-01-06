function ds4024_configTimeAxis(osc, scale, offset)
fprintf(osc, ':timebase:scale %e',scale);
fprintf(osc, ':timebase:offset %e',offset);
end