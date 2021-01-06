function ds4024_setTriggerMode(osc, mode)
fprintf(osc, ':trigger:mode %s',mode);
end