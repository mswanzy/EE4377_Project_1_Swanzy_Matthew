% EE4370 Project 1
% MATLAB code for Project 1
% Matthew Swanzy
% 02/27/2015

clc      % Clear screen 
clear    % Clear all variables

A = 3; 
f= 1000; 
omega = 2*pi*f; 
angle = (pi*33)/180; 
T = 1/f;

t = linspace(-10000*T,10000*T,1000);
x_t = 3*cos(omega*t+angle);
f_t = cos(omega*t).*sin(omega*t);
u_t = heaviside(t);
u_t_1 = heaviside(t-1);


subplot(4,1,1)
plot(t,x_t, 'linewidth',2);
grid on

subplot(4,1,2)
plot(t,u_t, 'linewidth',3);
grid on

subplot(4,1,3)
plot(t,x_t.*u_t, 'linewidth',2);
grid on

subplot(4,1,4)
plot(t,f_t.*u_t_1, 'linewidth',1);
grid on
