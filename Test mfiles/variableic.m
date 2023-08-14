figure 1 %this is the first graph to show the  initial condition a^2 +b^2 = 1
xlim ( [-1, 1]) % set the x axsis 
ylim ( [-1, 1])


num_points = 100 % create 100 random points 
theta = linspace ( 0, 2*pi, num_points) % set those random numbers from 0 to 2*pi ( a lenght of num_points)
a = cos (theta) % a is the cosine of each of the values of theta (0, 2*pi)
b = sin (theta) % b is the sin of each of the values of theta ( 0, 2*pi)


plot ( a, b, 'o') % Create a graph, x = a = cos (theta), y = b = sin (theta), 'o' is just to see each dot


axis square % or axis equal both work

% This is the initial condition where a^2 + b^2 = 1, all of the values of theta shown by each dot


figure 2 %label the axis % create another graph to show the two functions x(s)= a*s and y(s)= b*s 
axis equal

% create a function that depends on s and takes diferent values of a, LOOP

s= linspace (0, 1, 100) % "set the x axis" create 100 points from 0 to 1 

% create a loop to use diferent values of a and b 


for i= 1: num_points  % how many loops 
    y= b(i) * s  % will run x = a(1) * s, then x= a(2) * s, ... for num_points number of times
    x= a(i) * s  % will run x = a(1) * s, then x= a(2) * s, ... for num_points number of times 
    hold 
    fprintf('a = %f, b = %f\n', a, b); 
        plot ( x, y, 'o')  % plot a graph form 0 to 1 
        pause 
        hold 
        end
    end 
end 

%this part is not finished it just plots the figure 3 but as a^2 + b^2 is allways 1 g(s) is not affected by a nor b
figure 3 
axis equal

g = exp( -s.^2) %create the third function 

plot (s, g, 'o') % plot the third function 
hold

xlabel('s') % labeling x-axis 
ylabel('y(s) x(s)') % labeling y-axis 

