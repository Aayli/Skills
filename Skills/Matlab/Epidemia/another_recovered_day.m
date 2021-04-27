function Q2 = another_recovered_day()
    global recovered_vaccinated
    Q2 = 7;
    chance = rand();
    
    if chance < recovered_vaccinated
        Q2 = 8;

    end
end