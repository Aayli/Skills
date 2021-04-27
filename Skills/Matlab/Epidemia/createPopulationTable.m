function population_data = createPopulationTable(map_area, population_size, num_of_infected)
    % Generacja osób zarażonych na mapie wraz zich pozycją
    % Zakładamy, że stan początkowy to ludzie zdrowi i nie przebadanie chorzy
    % FUTURE: Dodać miasta - ogniska epidemii.

    % Generate vectors
    alive = zeros([map_area 1], 'logical');
    q1 = zeros([map_area 1], 'uint8');
    q2 = zeros([map_area 1], 'uint8');
    
    % Make alive
    aliveIdx = randperm(length(alive));
    aliveIdx = aliveIdx(1:population_size);
    alive(aliveIdx) = 1;
    q1(aliveIdx) = randi([1,5], [length(aliveIdx) 1]);
    q2(aliveIdx) = 1;
    
    % Make sick
    sickIdx = aliveIdx(randperm(length(aliveIdx)));
    sickIdx = sickIdx(1:num_of_infected);
    q2(sickIdx) = 3;
    
    % Create table
    person = table(alive,q1,q2);
    positionIdx = 1:map_area;
    positionIdx = positionIdx';
    population_data = table(positionIdx, person);  
end