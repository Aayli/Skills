function Q2 = another_sick_and_infect_day()
    global sick_infected_in_hospital  sick_infected_recovered
    Q2 = 5;
    chance = rand();
    
    if chance < sick_infected_in_hospital
        Q2 = 6;
    elseif chance < sick_infected_in_hospital + sick_infected_recovered
        Q2 = 7;
    end
end