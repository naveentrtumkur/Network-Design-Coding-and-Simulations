time_since_last_event = sim_time - time_last_event;
time_last_event       = sim_time;
area_num_in_s = area_num_in_s + num_in_s*time_since_last_event;
% Update area under number-in-system function.
area_num_in_q = area_num_in_q + num_in_q*time_since_last_event;
% Update area under number-in-queue function.
% Update area under server-busy indicator function.
area_server_status = area_server_status + ...
    server_status*time_since_last_event;