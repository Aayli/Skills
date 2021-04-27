function output = evolutionAlgorithm(road, p1, p2, max_velocity, penalty_coeff, population_size, tournament_size, mutation_chance, mutation_deviation, max_iteration, max_time, decrease_value)

    tic
    population = populationInit(population_size, road, max_velocity);
    population.fit = fitFunction(population.individual.velocity, road, p1, p2, max_velocity, penalty_coeff);
    best_fit = min(population.fit);
    best_individual = 0;
    best_individual_fit = inf;
    global TIME
    iterator = 0;

    while iterator <= max_iteration && toc < max_time
        % Selekcja
        [parentA_idx, parentB_idx] = tournamentSelection(population, tournament_size);
        % Krzy¿owanie
        population = crossover(population, parentA_idx, parentB_idx);
        % Mutacja
        population = mutation(population, mutation_chance, mutation_deviation);

        %Obliczanie dopasowania:  
        population = setGears(population);
        population.fit = fitFunction(population.individual.velocity, road, p1, p2, max_velocity, penalty_coeff);       % docelowo fitFunction tu i w populationInit

        iterator = iterator + 1;
        [fit, idx] = min(population.fit);
        [best_fit] = [best_fit fit];
        if best_individual_fit > min(population.fit)
            best_individual = population.individual(idx, :);
            best_individual_fit = min(population.fit);
        end
        if mutation_deviation > 10*decrease_value
            mutation_deviation = mutation_deviation - decrease_value;
        end
    end
    time = toc;
    plot(best_fit)
    title("Calculation time: " + time + "s");
    xlabel("Iteration")
    ylabel("FitFucntion")
    text(0.5*iterator, best_fit(1), "Ca³kowity czas trwania podró¿y: " + TIME)
    disp(best_individual)
    disp("Koszt: " + best_individual_fit)
    disp("Ca³kowity czas trwania podró¿y: " + TIME + "h")
%     disp("Jakoœæ rozwi¹zania (czas*min): " + toc * best_individual_fit)
    output = best_individual;
end

