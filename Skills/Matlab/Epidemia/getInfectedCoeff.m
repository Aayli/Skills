function inf_coef = getInfectedCoeff(q1_neigh, q2_neigh)
    % Na podstawie zarażonych sąsiadów, wylicza współczynnik zarażenia
    global neutral_coeff infecting_coeff protecting_others_coeff organized_protect_coeff
    
    inf_coef = 0;
    inf_coef = inf_coef + neutral_coeff*sum(q2_neigh == 3 & q1_neigh == 1, 'all');
    inf_coef = inf_coef + infecting_coeff*sum(q2_neigh == 3 & q1_neigh == 2, 'all');
    inf_coef = inf_coef + protecting_others_coeff*sum(q2_neigh == 3 & q1_neigh == 4, 'all');
    inf_coef = inf_coef + organized_protect_coeff*sum(q2_neigh == 3 & q1_neigh == 5, 'all');

    inf_coef = inf_coef + 1/5*neutral_coeff*sum(q2_neigh == 4 & q1_neigh == 1, 'all');
    inf_coef = inf_coef + 1/5*infecting_coeff*sum(q2_neigh == 4 & q1_neigh == 2, 'all');
    inf_coef = inf_coef + 1/5*protecting_others_coeff*sum(q2_neigh == 4 & q1_neigh == 4, 'all');
    inf_coef = inf_coef + 1/5*organized_protect_coeff*sum(q2_neigh == 4 & q1_neigh == 5, 'all');
    
    inf_coef = inf_coef + 1/5*neutral_coeff*sum(q2_neigh == 5 & q1_neigh == 1, 'all');
    inf_coef = inf_coef + 1/5*infecting_coeff*sum(q2_neigh == 5 & q1_neigh == 2, 'all');
    inf_coef = inf_coef + 1/5*protecting_others_coeff*sum(q2_neigh == 5 & q1_neigh == 4, 'all');
    inf_coef = inf_coef + 1/5*organized_protect_coeff*sum(q2_neigh == 5 & q1_neigh == 5, 'all');
end