function [OK] = este_fezabil(sir,risk,n,cmax)
% verificarea fezabilitatii in cazul problemei rucsacului in caz continuu

 %calculul costului alegerii obiectelor conform vectorului sir 
    riskSum=0;
    totalQuantity = 0;
    T2Q = sir(2);
    for j=1:n
        riskSum=riskSum+sir(j)*risk(j);
        totalQuantity = totalQuantity + sir(j);
    end;
    averageRisk = riskSum / totalQuantity;
    %verificarea fezabilitatii
    OK = 0;
        if (averageRisk < 2.5 && totalQuantity <= 1 && T2Q <= 0.3)
        OK= 1;
        end
end

