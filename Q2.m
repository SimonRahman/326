% Initializing Variables
% d is a matrix holding the odds of each value of the dice being rolled
% each value corresponds to the index of the value
d = [1/6,1/6,1/6,1/6,1/6,1/6];
% d2 is a temporary matrix holding the odds of each case when 2 dice are
% rolled
% It is used to calculate the odds of each case when 3 dice are rolled
d2 = conv(d, d,'full');
% d3 holds the odds of each case when 3 dice are rolled
d3 = conv(d2,d,'full');
% x hold the possible sums of when 3 dice are rolled
x = 3:18;
% x2 holds the possible outcomes of 1 dice being rolled
x2 = 1:6;

for i = 2:16
    d3(i)= d3(i)+d3(i-1);
end
for i = 2:6
    d(i)= d(i)+d(i-1);
end

% Plotting the pmf of 3 dice
stairs(x,d3,'b');

% Plot formatting
grid on;
xlabel('Sum of all 3 dices','FontSize',10);
ylabel('Probability','FontSize',10);
title('Cummulative Distribution Function','FontSize',10);

% Plotting the pmf of 1 dice being rolled on the same graph
hold on;
stairs(x2,d,'r');
hold off;
