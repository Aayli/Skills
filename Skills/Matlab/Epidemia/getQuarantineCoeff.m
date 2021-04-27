function quar_coef = getQuarantineCoeff(q2_neigh)
    % Na podstawie zarażonych sąsiadów, wylicza population_datawspółczynnik zarażenia
    
    % Chorzy sąsiedzi 25% mniejsza szamsa na pójście na kwarantanne
    quar_coef = 1/4*sum(q2_neigh == 4, 'all');
    
    % Chorzy na Covid
    quar_coef = quar_coef + sum(q2_neigh == 5, 'all');
end