time = out.ScopeData.time;
y = out.ScopeData.signals.values;

plot(time,y); title('Step response');
xlabel('Time (min)'); ylabel('Output');

ymax = max(y);
step_size = 10;
peak_overshoot = ((ymax-step_size)/step_size)*100

index_peak = find(y == ymax);

peak_time = time(index_peak)

s = length(time);
while((y(s)>=0.95*step_size) & (y(s)<=1.05*step_size))
    s = s-1;
end

settling_time = time(s)