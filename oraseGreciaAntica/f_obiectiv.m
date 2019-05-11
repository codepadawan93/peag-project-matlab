function [val]=f_obiectiv(cromozone,citySize,confMatrix)
% functia obiectiv din problema oraselor grecesti
% gradul de "conformitate" a unei permutari
val=0;

for j=2:citySize
    if confMatrix(cromozone(j-1),cromozone(j)) == 0
        val=val+1;
    end
end
%because our cromozome is used in order to sit the lords down at the table,
%the last allele needs to be compared with the first one since it completes
%a circle
if confMatrix(cromozone(1), cromozone(citySize)) == 0
    val = val + 1;
end

% calitatea permutarii: numarul total de lorzi asezati unul langa altul
% fara conflict

end
