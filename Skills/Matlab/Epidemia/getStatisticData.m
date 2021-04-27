function statisticData = getStatisticData(population_data)
    % Zwraca wektror której każda numer komórki odpowiada liczbie osób o
    % danym numerze stanu zdrowia
    statisticData = zeros([9 1]);
    for i = 1:9
        statisticData(i) = sum(population_data.person.q2 == i);
    end
       
end
