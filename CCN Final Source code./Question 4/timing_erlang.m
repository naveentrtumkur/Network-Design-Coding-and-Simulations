min_time_next_event = 1.0e+29;
next_event_type = 0;    % Initial default value
for k = 1:num_events    % class-k event; k =1 designates an arrival event
    if time_next_event(k) < min_time_next_event
        min_time_next_event = time_next_event(k);
        next_event_type = k;
end
    if next_event_type == 0 % i.e. when sim time is higher than 1.0e+29;
        sim_time
break; 
    end
end
sim_time = min_time_next_event