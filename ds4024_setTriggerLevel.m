function ds4024_setTriggerLevel(obj1, level)
fprintf(obj1,':trigger:edge:level %f', level);
end