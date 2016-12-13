time = linspace(-50,50,100);   % timp
FC = 0;                    
Perioad = 40;
N=50;
W0 = (2*pi)/Perioad; 
                        % numarul de armonice

for v=-N:1:N
 
    if(v==0)                
        continue;
    end;
 
    Cf = ((1)/(pi*1i*v))*(1-exp(-pi*1i*v));    % calculeaza coeficientul lui k al seriei furier exponentiale
    Fv = Cf*exp(W0*1i*v*time);                 % termenul k al seriei
    FC = FC + Fv;                                % adauga termenul k la f
 
end
 
plot(time, FC);
grid on;
xlabel('t');
ylabel('f(t)');
