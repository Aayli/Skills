% Mutation:
% mutacja osobników i sprawdzenie czy zmutowana wartość jest dopuszczalna z
% ograniczeniami
%rozmiar size(chromosome,1) 
%odniesienie do i tego elemętu prędkości chromosome.velocity(i)
%odniesienie do i tego elementu gear chromosome.gear(i) 

function output = mutation(population, mutation_chance, mutation_deviation)                            
    
    mutation_chance = mutation_chance/100;
    mutation_chance_matrix = rand(size(population.individual.velocity));
    mutated_value = mutation_deviation*randn(size(population.individual.velocity));
    
    bool_matrix = mutation_chance_matrix <= mutation_chance;
    velocity = population.individual.velocity(bool_matrix) + mutated_value(bool_matrix);
    velocity(velocity <= 1) = 1;
    
    population.individual.velocity(bool_matrix) = velocity;
        
    output = population;  
end

