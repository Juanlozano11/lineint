% Initial condition with fixed "a" and "b" 

function [a, b] = initialcondition()
  % This function generates a random a and b that satisfy the initial condition a^2 + b^2 = 1.

  while true 
    a = rand(1);
    b = rand(1);

    if a^2 + b^2 = 1 % creates the iniial condition, that creates an a and b that satisfy the initial condition
      break
    end
  end
end

% How to run the code: 

 [a, b] = initialcondition();

fprintf('a = %f, b = %f\n', a, b);

figure 1 %label the axis % create another graph to show the two functions x(s)= a*s and y(s)= b*s 

% create a function that depends on s and takes the value of a and b defined 

s= linspace (0, 1, 100) % "set the x axis" create 100 points from 0 to 1 

y = a(1)* s % create the fist function y(s)
x = b(1)* s % create the second function x(s)

plot (s, y, 'o') % plot the first function using dots for each s 
hold 
plot (s, x,'o') % plot thge second function usind dots for each s
hold 

% the value of a and b does not affects the function f(x,y) becasue a^2 + b^2 = 1 thus with some algebra it does not affects the final function 

figure 2 
axis equal

g = exp( -s.^2) %create the third function 

plot (s, g, 'o') % plot the third function 
hold

xlabel('s') % labeling x-axis 
ylabel('y(s) x(s)') % labeling y-axis 

