clear, clc

%% Model problemu (zainjalizuj swoj� drog�)
% Parametry problemu:
num_of_road_section = 100;          % ilo�� odcink�w,
road_length_m = 1000;               % d�ugo�� odcink�w
min_angle_deg = -10;                % minimalne nachylenie odcinaka
max_angle_deg = 10;                 % maksymalne nachylenie odcinaka
% road = roadInit(num_of_road_section, min_angle_deg, max_angle_deg, road_length_m);      % dorga o losowych nag�ych wzrostach i spadkach nachylenia

length = zeros([1, 20]) + 1000;
alpha = [-5 -5 -5 -4 -3 -2 -1 0 0 0 0 0 0 1 2 3 4 5 5 5];
road = table(length, alpha);                            % Droga stabilna najpierws spadek p�niej wzrost nachylenia

%% Parametry problemu (ustaw parametry)
p1 = 5;                             % cena benzyny
p2 = 10;                            % cena straconej godziny

% Ograniczenia: 
max_velocity = 140;                 % pr�dko�� od kt�rej naliczana jest kara
penalty_coeff = 200;                % cena za przekorczenie pr�dko��i za ka�de 10km/h

%% Model algorytmu (wprowad� parametry algorytmu)
% Parametry symulacji: 
population_size = 100;              % wielko�� populacji
tournament_size = 100;              % ilo�� osobnik�w rywalizuj�cych o potomstwo
mutation_chance = 65;               % procent gen�w poddawanych mutacji
mutation_deviation = 6;             % rozk�ad mutacji
decrease_value = 0.05;              % warto�� o kt�r� zmniejszamy variancje mutacji w kazdej iteracji

%warunki stopu
max_iteration = 50;                % ilo�� iteracji
max_time = inf;                     % maksymalny czas oblicze�

%% Inicjalizacja algorytmu
figure(1)
best_individual = evolutionAlgorithm(road, p1, p2, max_velocity, penalty_coeff, population_size, tournament_size, mutation_chance, mutation_deviation, max_iteration, max_time, decrease_value);
figure(2)
plot(best_individual.velocity)
title("Optimalized velocity");
xlabel("Pokonany fragment drogi")
ylabel("Pr�dko��")