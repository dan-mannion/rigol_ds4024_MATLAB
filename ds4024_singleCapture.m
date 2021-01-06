function ds4024_singleCapture(osc)
fwrite(osc, ':trigger:sweep single');
end