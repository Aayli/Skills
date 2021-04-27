%% Chances
% From Healthy
global healthy_quarantine healthy_infected healthy_sick healthy_vaccinated
healthy_quarantine = 0.008; 
healthy_infected = 0.025;
healthy_sick = 0.006;
healthy_vaccinated = 0;

% From Quarantine
global quarantine_healthy quarantine_sick quarantine_infected_sick
quarantine_healthy = 0.05;
quarantine_sick = 0.01;
quarantine_infected_sick = 0.02;

% From Infected
global infected_sick infected_recovered infected_infected_sick
infected_sick = 0.04; 
infected_recovered = 0.02;
infected_infected_sick = 0.01;

% From Sick
global sick_infected_sick sick_dead sick_healthy
sick_infected_sick = 0.08;
sick_dead = 0.001;
sick_healthy = 0.08;

% From Infected And Sick
global sick_infected_in_hospital  sick_infected_recovered
sick_infected_in_hospital = 0.008;
sick_infected_recovered = 0.05;

% From In Hospital
global hospital_dead hospital_recovered
hospital_dead = 0.025; 
hospital_recovered = 0.035;

% From In Recovered
global recovered_vaccinated
recovered_vaccinated = 0.0; 


% Behavioral Coefficients
global neutral_coeff infecting_coeff self_protecting_coeff protecting_others_coeff organized_protect_coeff
neutral_coeff = 1;
infecting_coeff = 2.5;
self_protecting_coeff = 0.7;
protecting_others_coeff = 0.7;
organized_protect_coeff = 0.5;