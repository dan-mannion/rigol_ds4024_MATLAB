function ds4024_setTriggerSlope(obj1, slope)
fwrite(obj1,strcat(":trigger:edge:slope ",slope));
end