%% parameters 
clc, clear
p1 = 5;
p2 = 0;
max_velocity = 140;
penalty_coeff = 10;
%% roadInit
road = roadInit(3, -5, 5, 1000);
disp(road)

%% populationInit
population = populationInit(5, road, max_velocity);
disp(population)

%% costFunction
cost = costFunction(population.individual.velocity, road, p1, 0);
disp(cost)

%% penaltyFunction
penalty = penaltyFunction(population.individual.velocity, max_velocity, penalty_coeff);
disp(penalty)

%% fitFunction
population.fit = fitFunction(population.individual.velocity, road, p1, p2, max_velocity, penalty_coeff);
disp(population)

%% tournamentSelection
numOfCompetitors = 3;
[parentA_Idx, parentB_Idx] = tournamentSelection(population, numOfCompetitors);
disp(["Parents index:", parentA_Idx, parentB_Idx]);

%% crossover
new_population = crossover(population, parentA_Idx, parentB_Idx);
disp(new_population)

%% mutation
mutation_chance = 50;
mutation_variance = 5;
mutated_population = mutation(new_population, mutation_chance, mutation_variance);
disp("Które geny siê zmieni³y:")
disp(new_population.individual.velocity ~= mutated_population.individual.velocity)
