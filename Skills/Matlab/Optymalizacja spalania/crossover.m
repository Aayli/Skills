function [output] = crossover(population, parentA_idx, parentB_idx)
    
    chose_parent_matrix = randi([0 1], size(population.individual.velocity));
    
    velocity_A = population.individual.velocity(parentA_idx, :);
    velocity_B = population.individual.velocity(parentB_idx, :);
    velocity_A_matrix = repmat(velocity_A, size(population, 1), 1);
    velocity_B_matrix = repmat(velocity_B, size(population, 1), 1);
    
    velocity_matrix = velocity_A_matrix;
    velocity_matrix(chose_parent_matrix == 1) = velocity_B_matrix(chose_parent_matrix == 1);
    population.individual.velocity = velocity_matrix;
    
    output = population;
end