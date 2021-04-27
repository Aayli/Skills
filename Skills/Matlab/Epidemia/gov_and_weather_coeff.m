function gov_and_weather_factor = gov_and_weather_coeff(day)
    gov_and_weather_factor = 1;
    
    if day < 10 % Pierwsze dni pandemii od 20 marca do 30 marca
        gov_and_weather_factor = 1;
    elseif day < 52-10 % Lockdown od 30 marca do 11 maja
        gov_and_weather_factor = 1.3;
    elseif day < 102-10 % Poluzowanie lockdownu od 11 maja do 1 lipca, pogoda nie sprzyja zakażeniom
        gov_and_weather_factor = 0.5;
    elseif day < 205-10 % Ostrożny powrót do normalności, lato wstrzymuje rozprzestrzenianie się zarazy
        gov_and_weather_factor = 0.6;
    elseif day < 270-10 % Jesień, rozpoczyna się druga fala wirusa
        gov_and_weather_factor = 1.7;   
    elseif day < 300-10 % Spadek na zimę
        gov_and_weather_factor = 0.4; 
    elseif day < 380-10 % Wiosna, trzecia fala
        gov_and_weather_factor = 1.0; 
    end
end


