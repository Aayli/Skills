function Q2 = another_healthy_day(quar_coef, inf_coef,gov_coef)
    global healthy_quarantine healthy_infected healthy_sick healthy_vaccinated
    Q2 = 1;
    chance = rand();
    
    if chance < inf_coef*healthy_quarantine
        Q2 = 2;
    elseif chance < quar_coef*healthy_quarantine + inf_coef*gov_coef*healthy_infected
        Q2 = 3;
    elseif chance < quar_coef*healthy_quarantine + inf_coef*gov_coef*healthy_infected + inf_coef*gov_coef*healthy_sick
        Q2 = 4;
    elseif chance < quar_coef*healthy_quarantine + inf_coef*gov_coef*healthy_infected + inf_coef*gov_coef*healthy_sick + healthy_vaccinated
        Q2 = 8;
    end
    
end