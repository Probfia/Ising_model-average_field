xvals = 0.01:0.01:5;
pyvals = [];
nyvals = [];
for k = 1:length(xvals)
    syms m;
    y = vpasolve(m == tanh(m*xvals(k)),m,0.5);
    pyvals = [pyvals,y];
end

plot(xvals,pyvals);
hold on

for k = 1:length(xvals)
    syms m;
    y = vpasolve(m == tanh(m*xvals(k)),m,-0.5);
    nyvals = [nyvals,y];
end

plot(xvals,nyvals)