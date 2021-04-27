clear, clc

%% Model problemu (zainjalizuj swoj¹ drogê)
% Parametry problemu:
num_of_road_section = 100;          % iloœæ odcinków,
road_length_m = 1000;               % d³ugoœæ odcinków
min_angle_deg = -10;                % minimalne nachylenie odcinaka
max_angle_deg = 10;                 % maksymalne nachylenie odcinaka
% road = roadInit(num_of_road_section, min_angle_deg, max_angle_deg, road_length_m);      % dorga o losowych nag³ych wzrostach i spadkach nachylenia

length = zeros([1, 20]) + 1000;
alpha = [-5 -5 -5 -4 -3 -2 -1 0 0 0 0 0 0 1 2 3 4 5 5 5];
road = table(length, alpha);                            % Droga stabilna najpierws spadek póŸniej wzrost nachylenia

%% Parametry problemu (ustaw parametry)
p1 = 5;                             % cena benzyny
p2 = 10;                            % cena straconej godziny

% Ograniczenia: 
max_velocity = 140;                 % prêdkoœæ od której naliczana jest kara
penalty_coeff = 200;                % cena za przekorczenie prêdkoœæi za ka¿de 10km/h

%% Model algorytmu (wprowadŸ parametry algorytmu)
% Parametry symulacji: 
population_size = 100;              % wielkoœæ populacji
tournament_size = 100;              % iloœæ osobników rywalizuj¹cych o potomstwo
mutation_chance = 65;               % procent genów poddawanych mutacji
mutation_deviation = 6;             % rozk³ad mutacji
decrease_value = 0.05;              % wartoœæ o któr¹ zmniejszamy variancje mutacji w kazdej iteracji

%warunki stopu
max_iteration = 50;                % iloœæ iteracji
max_time = inf;                     % maksymalny czas obliczeñ

%% Inicjalizacja algorytmu
figure(1)
best_individual = evolutionAlgorithm(road, p1, p2, max_velocity, penalty_coeff, population_size, tournament_size, mutation_chance, mutation_deviation, max_iteration, max_time, decrease_value);
figure(2)
plot(best_individual.velocity)
title("Optimalized velocity");
xlabel("Pokonany fragment drogi")
ylabel("Prêdkoœæ")