function [Pop_urm] = Genitor(Pop_curenta,Copii,dim,m,ni)
%populatia curenta este sortata crescator dupa valorile ultimei coloane -dupa fitness
Pop=sortrows(Pop_curenta,m);
%sunt inlocuiti cei mai slabi ni indivizi din Pop_curenta cu ni copii -
%copii care inlocuiesc parintii sunt generati aleator, un copil putand fi
%consderat o singura data
Pop_urm=Pop;
% disp('Populatia inainte de genitor:');
% disp(Pop);
poz=[];
for i=1:ni
    gata=0;
    while(~gata)
        t=unidrnd(dim);
        if(~ismember(t,poz))
            gata=1;
            poz=[poz;t];
        end
    end
    %disp(t);

    Pop_urm(i,:)=Copii(t,:);
end
% disp('Populatia dupa genitor:');
% disp(Pop_urm);
end

%Exemplu de apel
%Pop=gen_pop_perm(20,6);
%PopC=gen_pop_perm(20,6);
%PopUrm=Genitor(Pop,PopC,4);disp(PopUrm);