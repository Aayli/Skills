function Q2 = another_infect_day()
   global infected_sick infected_recovered infected_infected_sick all_confirm_cases
    Q2 = 3;
    chance = rand();
    
    if chance < infected_sick
        Q2 = 4;
    elseif chance < infected_sick + infected_recovered
        Q2 = 7;
    elseif chance < infected_sick + infected_recovered + infected_infected_sick
        all_confirm_cases = all_confirm_cases + 1; 
        Q2 = 5;

    end
end