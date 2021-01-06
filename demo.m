osc = ds4024_connect();
%Configure channel: channel num, scale, offset.
ds4024_configChannel(osc, 1, 1, 0);
ds4024_configChannel(osc, 2, 1, 0);
%COnfigure horizontal axis
ds4024_configTimeAxis(osc, 0.5, 7*0.5);
%Configure trigger
ds4024_setTriggerSource(osc, 'ext');
ds4024_setTriggerMode(osc,'edge');
ds4024_setTriggerSlope(osc, 'negative');
ds4024_setTriggerLevel(osc, -0.5);

%Set to single
ds4024_singleCapture(osc);

%Restart single capture
ds4024_restartSingleCapture(osc);

%Close connection

ds4024_disconnect(osc);