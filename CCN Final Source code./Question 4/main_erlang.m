% The simulation of M/M/1 queueing system (QS) 
%% Global parameters
time_next_event(1:2) = 0;
num_events = 2;
mu = 6;
mean_service_time = 1/mu;
limit_customers = 100;
%system (whether admitted or blocked) which induce termination of the
%simulation run
Q_LIMIT = 1e30;             % The simulation program is terminated if the
%number of stored (in queue) messages exceeds this level
% 1e30 denotes a high number (taken as infinity)
lambda = 5;
rho = lambda/mu;
mean_interarrival = 1/lambda; % Average interarrival time between message
%arrivals [sec];
%% Initialize the system's parameters
initialize;
%% Main
while total_of_customers-1 < limit_customers    
    % checks that the max number
%of served messages is below the specified limit and calls the timing( )
%routine.
    % Also include termination conditions that involve maximum simulation run
%time, queue-size limits.
    % timing: Determines the next event type and updates the current
%simulation time
timing;
% Events = {arrivals, departures}
% arrival and departure events for a G/G/1 QS
   % Average message service time [sec]; 1/2 =
% Maximum number of messages that arrive to the
% update_time_avg_stats
    update_time_avg_stats;
    switch next_event_type
        case 1
            arrive();
        case 2
            depart();
end
    %total_of_customers
end
% report
report;