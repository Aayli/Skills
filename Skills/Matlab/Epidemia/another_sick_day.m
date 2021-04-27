function Q2 = another_sick_day()
    global sick_infected_sick sick_dead sick_healthy all_confirm_cases
    Q2 = 4;
    chance = rand();
    
    if chance < sick_infected_sick
        all_confirm_cases = all_confirm_cases + 1;
        Q2 = 5;
    elseif chance < sick_infected_sick + sick_dead
        Q2 = 9;
    elseif chance < sick_infected_sick + sick_dead + sick_healthy
        Q2 = 1;
    end
end