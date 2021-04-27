%% Symulacja epidemii
clear; close; clc;

% Dane
load("RussiaVaccData.mat")

% Zmienne globalne
global all_confirm_cases;
all_confirm_cases = 0;

% Parametry modelu              % Dla 54^2 mamy wówczas przelicznik, w
                                % przybliżeniu, że 1 piksel to 40000 osób populacji
map_area = 54^2;                % Powierzchnia Rosji 17.130.000 km^2
population_size = 54^2;         % Liczba ludności 114.4 mln
num_of_infected = 3;
num_of_day = 60;


%% Algorytm
population_data = createPopulationTable(map_area, population_size, num_of_infected);
chances

for day = 1:num_of_day
    tic    
    new_data = another_day(population_data, day);
    vaccine(population_data, day); % Dałem po (np. bo szczepionka nie działa od razu) :p
    
    statisticData = getStatisticData(population_data);    
    draw(population_data, day, statisticData);
    population_data = new_data;
    toc
end


%% TODO:

% AW:
%   Poprawić statisticData potrzebujemy: total_cases, active_cases, 
%   recovered, hosp, vacc, total deadth

%   Szczepienia - znalazłem RussiaVaccData wykorzystaj ;) (pierwszy wiersz to NaN) 


% RG:
%   Dozwolić na przejscia z Recovered na healthy (nowa odmiana wirusa)

%% Future
% Uleczeni, a ludzie z nabytą odpornością (jedni nie musieli zostać uwzględnieni w statystykach)
% Geobuble
% Transport - przemieszczanie się ludności
% Rodzielić gov & weather na 2 osobne funkcje: gov sprawia, że ludzie np
% noszą maseczki, a wether jest niezależny
% Enum class

%   Inne funkcje na sąsiedztwo + rozkład gausa od odległości sąsiadów
%   1. Okrąg o zadanym promieniu
%   2. Róg 3x3 ma tylko 3 sąsiadów 

%% Sources and Data

% https://en.wikipedia.org/wiki/COVID-19_pandemic_in_Russia
%https://www.worldometers.info/coronavirus/country/russia/
%https://graphics.reuters.com/world-coronavirus-tracker-and-maps/countries-and-territories/russia/
% https://ourworldindata.org/coronavirus/country/russia

% Ogólnie pierwsze restrykcje wprowadzono około 30 marca 2020 roku. 
% Cały lockdown trwał do 11 Maja, potem nieco poluzowano jednak, nie
% całkiem jeszcze.
% Od 1 lipca życie w miarę wróciło do normy, otwarto bary, kawiarnie,
% restauracje, kina itp.
% Na koniec sierpnia śmmiertelność wynosiła w rosji 4,6%
% W październiku zaczęła się druga fala
% Szczepienia zaczęły się w grudniu 2020 rou, od 5 grudnia
% do 20 kwietnia zaszczepiono jakieś 10,3 mln ludzi,
% zatem przy mniej więcej liniowym poziomie szczepień, wychodzi iż dziennie
% szczepimy jakieś 85 830 osób, przy czym zakładamy że jednorazowe
% szczepienie wystarczy
% Jeżeli chcemy by szczepienie uznawano za pełnowartościowe, dopiero w
% momencie pełnego zaszczepienia, wówczas zakładamy że 13 stycznia (298 dzień epidemii)
% zaczęto szczepić drugą dawką i do 20 kwietnia zaszczepiono 6,22 mln osób.
% Tj. w ciągu 97 dni szczepiono dziennie około 64 100 osób

% Zakładamy że symulacja trwa od 20 marca 2020 do 20 kwietnia 2021, tj. 395
% dni