function population = populationInit(population_size, road, max_velocity)
    
    road_size = size(road.length, 2);
    velocity = randi([1 max_velocity], population_size, road_size);
    gear = randi([3 5], population_size, road_size);
    individual = table(velocity,gear);
    
    fit = zeros(population_size, 1);
    
    population = table(individual, fit);
end

