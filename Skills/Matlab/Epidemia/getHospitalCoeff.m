function hosp_coef = getHospitalCoeff(q2_neigh)
    % Na podstawie zarażonych sąsiadów, wylicza population_datawspółczynnik zarażenia
    
    % Gdy ktoś z sąsiadów jest w szpitalu zwiększa współczynnik
    % (możliwe przepełnienie szpitali)
    hosp_coef = 3*sum(q2_neigh == 6, 'all');
    
end