function Q2 = another_day_on_quarantine()
    global quarantine_healthy quarantine_sick quarantine_infected_sick all_confirm_cases;
    Q2 = 2;
    chance = rand();
    
    if chance < quarantine_healthy
        Q2 = 1;
    elseif chance < quarantine_healthy + quarantine_sick
        Q2 = 4;
    elseif chance < quarantine_healthy + quarantine_sick + quarantine_infected_sick
        all_confirm_cases = all_confirm_cases + 1; 
        Q2 = 5;
    end
end