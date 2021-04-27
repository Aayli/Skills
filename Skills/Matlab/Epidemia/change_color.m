function [population_colored] = change_color(population)
    
population_colored = zeros(length(population), length(population), 3);
for x = 1:length(population)
    for y = 1:length(population)
        
        switch population(x,y)
            case 0
                population_colored(x,y,:) = [0.7,0.7,0.7];
            case 1
                population_colored(x,y,:) = [1,1,1];
            case 2
                population_colored(x,y,:) = [1,0.886,0.031];
            case 3
                population_colored(x,y,:) = [0.031,1,0.871];
            case 4
                population_colored(x,y,:) = [0.031,0.627,1];
            case 5
                population_colored(x,y,:) = [0.631,0.031,1];
            case 6
                population_colored(x,y,:) = [1,0.031,0.031];
            case 7
                population_colored(x,y,:) = [0.031,1,0.255];
            case 8
                population_colored(x,y,:) = [1,0.467,0.031];
            case 9
                population_colored(x,y,:) = [0,0,0];
            
        end
    end
end
end