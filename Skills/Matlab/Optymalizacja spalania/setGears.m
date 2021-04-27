function output = setGears(population)
    population.individual.gear(population.individual.velocity < 20) = 1;
    population.individual.gear(population.individual.velocity < 35) = 2;
    population.individual.gear(population.individual.velocity < 45) = 3;
    population.individual.gear(population.individual.velocity < 65) = 4;
    population.individual.gear(population.individual.velocity >= 65) = 5;
    
    output = population;
end

