function map = createPopulationMap(map_size, population_size, num_of_sick)
    % q1 - cecha charakteru
    % q2 - stan zdrowia
    
    map = Person;
    for i = 1:map_size
        for j = 1:map_size
            map(i,j) = Person;   
        end
    end

    allPosiblePeopleIdx = randperm(map_size^2);
    peopleIdx = allPosiblePeopleIdx(1:population_size);
    for i = peopleIdx
        map(i).setAlive;
    end
    
    randomPeopleIndexes = peopleIdx(randperm(length(peopleIdx)));
    sickIdx = randomPeopleIndexes(1:num_of_sick);
    for i = sickIdx
        map(i).setSick;
    end

    
end

