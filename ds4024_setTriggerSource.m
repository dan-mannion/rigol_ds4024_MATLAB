function ds4024_setTriggerSource(osc, source)
fwrite(osc,strcat(":trigger:edge:source ",source));
end