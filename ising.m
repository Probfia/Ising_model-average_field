betavals = 0:0.05:6;
bvals = -3:0.05:3;
mvals = [];

for i = 1:length(betavals)
    mi = zeros(1,length(bvals));
    for j = 1:length(bvals)
        syms x;
        try_val = 0.7*sign(bvals(j));
        m = vpasolve(x == tanh(betavals(i).*(x + bvals(j))),x,try_val);
        if size(m) == 0,1;
            m = 0;
        end
        mi(j) = double(m);
    end
    mvals = [mvals;mi];
end

surf(bvals,betavals,mvals)