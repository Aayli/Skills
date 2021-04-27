function [] = vaccine(population_data, day)
    if day >= 298 % Moment od którego zaczęto szczepić - 20 grudnia - 275 dzień epidemii, lub 13 stycznia - 298 dzień epidemii - druga dawka
       num_of_daily_vacc = 1;
       vacc_per_day = 2; % Około 6 przy założeniu że nasza populacja jest równa 108x108
                         % Pierwiastek z sześciu jeżeli populacja jest równa 54x54            
       vaccIdx = randperm(length(population_data.positionIdx)); % losowo układamy populację  
       for i = 1:length(vaccIdx)
            if population_data.person.q2(vaccIdx(i)) == 1
                   population_data.person.q2(vaccIdx(i)) = 8;
                   num_of_daily_vacc = num_of_daily_vacc + 1;
            end
            if num_of_daily_vacc <= vacc_per_day
                break;
            end
       end 
    end

end

