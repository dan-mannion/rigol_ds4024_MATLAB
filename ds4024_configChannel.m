function ds4024_configChannel(osc, channel, scale, offset)
fwrite(osc, sprintf(':channel%d:scale %f', channel, scale));
fprintf(osc, sprintf(':channel%d:offset %f',channel, offset));
end