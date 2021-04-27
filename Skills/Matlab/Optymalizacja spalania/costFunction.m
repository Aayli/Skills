function [outputArg] = costFunction(velocity, road, p1, p2)
    
    % parametry
    road_length = road.length;  % m 
    E = 3.5*1e3*3600;           % W
        
    % Funkcje:
    t = sum(road_length./velocity/1000, 2);
    global TIME 
    TIME = min(t);
    F_sum = sum(F_o(velocity, road), 2);
    
    % Funkcja kosztu, kar, dopoasowania:
    costFunction = p1*F_sum/E + p2*t + 0.2*t;
    outputArg = sum(costFunction, 2);
%     x = velocity;
%     outputArg = 0.01*(x-50).^4-0.4*(x-20).^2-0.2*(x-70).^2-5*(x-50).^2;
end