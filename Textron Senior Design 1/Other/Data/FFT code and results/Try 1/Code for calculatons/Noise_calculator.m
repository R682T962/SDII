clear all;
close all;
clc;

y =xlsread('scope.xlsx','F2:F2501');
output = zeros(2500,1);

for count =1:2500
    if y(count) > 100
        output(count) = y(count)-120;
    elseif y(count) < 10
        output(count) = y(count);
    else 
        output(count) = 0;
    end
    
end 