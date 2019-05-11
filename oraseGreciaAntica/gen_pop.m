function [Pop]=gen_pop(dim, citySize, confMatrix)
% ACEASTA FUNCTIE ESTE FOLOSITA IN GA PENTRU GENERAREA POPULATIEI LA
% MOMENTUL INITIAL

%generarea populatiei initiale in problema oraselor grecesti
%exemplu: pop=gen_pop_perm(10,8);
%dim = the dimension of the population (rows)
%the columns of the population will be the size of the total number of
%cities

%Initializarea cu matricea nula

Pop=zeros(dim,citySize+1);
for i=1:dim
    %fiecare linie din Pop are primele m componente permutarea corespunzatoare
    %unei configuratii si ultimul element este calitatea individului 
    Pop(i,1:citySize)=gen_perm(citySize);
    % sau este folosita functia MATLAB randperm(m); 
    Pop(i,citySize+1)=f_obiectiv(Pop(i,1:citySize),citySize, confMatrix);
end
