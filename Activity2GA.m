clc;
clear;
population_size=10;
bounds=[-5,5];
%generate initial solution
x1=(bounds(2)-bounds(1)).*rand(1,population_size)+bounds(1)
x2=(bounds(2)-bounds(1)).*rand(1,population_size)+bounds(1)
%calculate fitness function
z=fitness(x1,x2)
%obtain max fitness
[max_fitness,max_index]=max(z);
max_fitness
max_sol=[x1(max_index),x2(max_index)]
%roulette wheel selection
selected_indices=roulette_sel(z);
x1_selected=[];
x2_selected=[];
for i=1:length(selected_indices)
    x1_selected=[x1_selected,x1(selected_indices(i))];
    x2_selected=[x2_selected,x2(selected_indices(i))];
end
x1_selected
x2_selected
