function draw(population, day, statistic)
global all_confirm_cases

figure(1)

subplot(2,2,1);
vector_of_population = population.person.q2;
vector_of_population = reshape(vector_of_population, sqrt(length(vector_of_population)), sqrt(length(vector_of_population)));

colors = [ 0.70, 0.70, 0.70
        1.00, 1.00, 1.00
        1.00, 0.79, 0.05
        0.00, 0.63, 0.91
        0.25, 0.28, 0.80
        0.64, 0.29, 0.64
        0.93, 0.11, 0.14
        0.13, 0.69, 0.3
        1.00, 0.47, 0.03
        0.00, 0.00, 0.00 ];

image(vector_of_population)
colormap(colors)
title("Dzień "  + string(day));

if day == 1
    subplot(2,2,2);
    oznaczenia_stanow = imread("Legenda.png");
    imshow(oznaczenia_stanow);
    title("Oznaczenia kolorów")
end

subplot(2,2,3:4);
hold on; axis on;
plot(day, 40*all_confirm_cases, '.','Color', colors(5,:),'LineWidth',3);
plot(day, 40*statistic(5), '.','Color', colors(6,:),'LineWidth',3);
plot(day, 40*statistic(6), '.','Color', colors(7,:),'LineWidth',3);
plot(day, 40*statistic(7), '.','Color', colors(8,:),'LineWidth',3);
plot(day, 40*statistic(8), '.','Color', colors(9,:),'LineWidth',3);
plot(day, 40*statistic(9), '.','Color', colors(10,:),'LineWidth',3);
title("Wykres stanow")
legend("All Confirm Cases", "Active Cases", "Hospitalizations", "Recovered", "Vaccined", "Total Deaths",  "Location", "northwest")
shg;

end