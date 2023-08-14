figure 1

xlim ([-1, 1])
ylim ([-1, 1])

num_points=100 
theta =linspace( 0, 2*pi, num_points)

a= cos(theta)
b= sin (theta)

plot ( a, b, 'o')

axis square 

figure 2 

s= linspace (0,1,100)

for i= 1: num_points 
    y= b(i) * s  
    x= a(i) * s
    hold 
    fprintf('a = %f, b = %f\n', a, b); 
        plot ( x, y, 'o') 
        pause 
        hold 
        end
    end 
end 

