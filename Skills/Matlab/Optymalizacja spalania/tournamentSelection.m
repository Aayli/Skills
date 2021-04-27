% Selection: 
% z populacji losujem numOfCompetitors zawodników i zwracamy indeksy 2
% najlepszych zawodników.

function [parentA_idx, parentB_idx] = tournamentSelection(population, numOfCompetitors)
    [population_size, ~] = size(population);
    if (numOfCompetitors > population_size)
        numOfCompetitors = population_size;
    end
    indexesInTournament = randperm(population_size, numOfCompetitors);
    
    %ParentA the best
    [~,winIdx] = min(population.fit(indexesInTournament));
    parentA_idx = indexesInTournament(winIdx);
    
    % ParentB secound the best
    indexesInTournament(winIdx) = [];
    [~,winIdx] = min(population.fit(indexesInTournament));
    parentB_idx = indexesInTournament(winIdx);
end

