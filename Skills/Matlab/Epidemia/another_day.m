function new_data = another_day(population_data, day)
    % Funkcja symulująca dzień z życia osoby w zależności od stanu w jakim
    % się znajduję.
    new_data = population_data;
    dim = sqrt(length(population_data.positionIdx));
    pop = reshape(population_data.positionIdx, [dim dim])';
    
   
    for idx = 1:length(population_data.positionIdx)
        switch population_data.person.q2(idx)
            case 1
                neigh = getNeighbuorhood(pop, idx);
                inf_coef = getInfectedCoeff(population_data.person.q1(neigh), population_data.person.q2(neigh));
                quar_coef = getQuarantineCoeff(population_data.person.q2(neigh));
                gov_weath_coeff = gov_and_weather_coeff(day);
                new_data.person.q2(idx) = another_healthy_day(quar_coef, inf_coef, gov_weath_coeff);
            case 2
                new_data.person.q2(idx) = another_day_on_quarantine();
            case 3
                new_data.person.q2(idx) = another_infect_day();
            case 4
                new_data.person.q2(idx) = another_sick_day();
            case 5
                new_data.person.q2(idx) = another_sick_and_infect_day();
            case 6
                neigh = getNeighbuorhood(pop, idx);
                hosp_coef = getHospitalCoeff(population_data.person.q2(neigh));
                new_data.person.q2(idx) = another_day_in_hospital(hosp_coef);              
            case 7
                new_data.person.q2(idx) = another_recovered_day();  
        end
     
    end

end