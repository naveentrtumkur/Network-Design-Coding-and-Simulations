time_next_event(1) = sim_time + exprnd(mean_interarrival);
num_in_s = num_in_s + 1;
time_arrival_system(num_in_s) = sim_time;       % time arrival system (i) =
%time of arrival of message-i
                                                % time arrival system
%(num_in_s) = time of arrival of the last message to arrive
total_of_customers = total_of_customers + 1;
if server_status == 1                           % busy is 1 and idle is 0
    num_in_q = num_in_q + 1;                    %Server is busy, so increment
%number of customers in queue
    % Check to see whether an overflow condition exists.
    %if num_in_q > Q_LIMIT                       % Check to see whether
%termination condition is met: reached, so stop the simulation.
% The queue limit has been
        %display(['Overflow occurs at simu time = ' num2str(sim_time)]);
%break; 
 %   end
    time_arrival_queue(num_in_q) = sim_time;
else
    % server_status == idle
    % Server is idle, so arriving customer has a delay of zero.
    % The following two statements are for program clarity and
    % do not affect the results of the simulation.
    wait_time = 0;
    total_of_waits = total_of_waits + wait_time;
    % Increment the number of customers delayed, and make server busy.
    num_waiting_custs = num_waiting_custs + 1;
    server_status = 1; % server is busy
    %Schedule a departure (service completion).
    time_next_event(2) = sim_time + exprnd(mean_service_time);
end