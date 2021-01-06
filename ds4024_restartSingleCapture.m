function ds4024_restartSingleCapture(osc)
fwrite(osc, ':run');
fwrite(osc,':trigger:sweep single');
end