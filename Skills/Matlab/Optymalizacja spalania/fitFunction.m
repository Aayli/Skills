function output = fitFunction(velocity, road, p1, p2, max_velocity, penalty_coeff)
    
    cost = costFunction(velocity, road, p1, p2);
    penalty = penaltyFunction(velocity, max_velocity, penalty_coeff);
        
    output = cost + penalty;
end