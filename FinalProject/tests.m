clear; clc;

load('covid_data.mat');

df = cell2table(covid_data(2:end, :));  % Creating our database
df.Properties.VariableNames = (covid_data(1, :));  % Renaming the columns! 

df_new_cases = df(1, :);

country = 'Brazil';
df_country = df((strcmp(df.Country, country)), :);


a = sum(cell2mat(covid_data(2:end, 3:end)));  % Pega todos os valores e soma

plot(df_country)

