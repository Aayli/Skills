function Q2 = another_day_in_hospital(hosp_coef)
    global hospital_recovered hospital_dead
    Q2 = 6;
    chance = rand();
    
    if chance < hospital_recovered
        Q2 = 9;
    elseif chance < hospital_recovered + hosp_coef*hospital_dead
        Q2 = 7;
    end
end