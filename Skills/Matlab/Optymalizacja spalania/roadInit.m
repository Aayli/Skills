function road = roadInit(num_of_sections, min_angle_deg, max_angle_deg, road_length_m)
    if min_angle_deg > max_angle_deg
       [min_angle_deg, max_angle_deg] = [max_angle_deg, min_angle_deg];
    end
    if road_length_m <= 0
        road_length_m = 0.1;
    end
    if num_of_sections <= 0
        road_length_m = 1;
    end
    
    length = zeros([1, num_of_sections]) + road_length_m;
    alpha = randi([min_angle_deg max_angle_deg], 1, num_of_sections);
%     length = zeros([1, 20]) + 1000;
%     alpha = [-5 -5 -5 -4 -3 -2 -1 0 0 0 0 0 0 1 2 3 4 5 5 5];
    road = table(length, alpha);
end

