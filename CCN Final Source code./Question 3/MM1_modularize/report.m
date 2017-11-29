% Average number in the system E[X]
display(['E[X] = ' ...
num2str(area_num_in_s/sim_time)]);
% Average number in the queue E[Q]
display(['E[Q] = ' ...
    num2str(area_num_in_q /sim_time)]);
% Average delay in the system E[D]
display(['E[D] = ' ...
    num2str(total_of_delays/num_delay_custs)]);
% Average delay in the queue E[W]
display(['E[W] = ' ...
    num2str(total_of_waits/num_waiting_custs)]);
% The utilization of Server
% Server utilization = fraction of time that the service channel is busy;
% At steady state, for M/M/1 system, it will be equal to ? = ?/?.
%display(['System Utiliation = ' ...
    %num2str(area_server_status/sim_time)]);
EX = rho/(1-rho);
ED = EX/lambda;
EW = ED - 1/mu;
EQ = rho^2/(1-rho);
%% Part 1a
display(['Computed E[X] = ' num2str(EX)]);
display(['Computed E[Q] = ' num2str(EQ)]);
display(['Computed E[D] = ' num2str(ED)]);
display(['Computed E[W] = ' num2str(EW)]);