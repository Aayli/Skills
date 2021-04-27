function [output] = F_o(velocity, road)
    % parametry
    alpha = deg2rad(road.alpha);     %rad
    v = velocity;               % m/s
        
    m = 1150;                   % kg
    A = 2.5;                    % m^2
    Cd = 0.33;                  % -
    g = 9.81;                   % m/s
    
    % Funkcje:
    F_p = 0.047*A*Cd*v.^2;
    F_t = m*g*(12 + 0.0006*v.^2)/1000;
    F_w = m*g*sin(alpha);
    
    F = F_p + F_t + repmat(F_w, size(v, 1), 1);
    F = F.*road.length;
    F(F<0) = 0;
    output = F;
end

