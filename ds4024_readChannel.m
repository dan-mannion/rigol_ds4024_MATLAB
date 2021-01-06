function data = ds4024_readChannel(obj1, channel)
fwrite(obj1,':waveform:format ascii');
fwrite(obj1, strcat(":waveform:source ", channel));
fwrite(obj1, ':waveform:data?');
raw = fscanf(obj1,'*char');
while(double(raw(end))~=10)
   raw =  [raw, fscanf(obj1,'*char')];
end
b=cell2mat(textscan(raw,'%f,'));
voltage = b(1:end-1);

%Get time axis
fwrite(obj1, ':timebase:scale?');
scale = fscanf(obj1, '%f');
fwrite(obj1, ':timebase:offset?');
offset = fscanf(obj1, '%f');
dt = scale/100;
time = dt.*[0:(length(voltage)-1)];
data.time=time;
data.voltage = voltage;

end