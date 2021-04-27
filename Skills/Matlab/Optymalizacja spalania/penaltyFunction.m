function output = penaltyFunction(velocity, max_velocity, penalty_value)
       
    penalty = sum(penalty_value*(velocity-max_velocity)/10, 2);
    penalty(penalty < 0) = 0;
    output = penalty;
end