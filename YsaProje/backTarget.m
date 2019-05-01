%% YSA dan elde edilen deðerlerin 0 ile 9 aralýðýna çekilmesi.

%Ysa similasyonundan elde edilen çýktýlarýn 10x10000 boyutundan 10000x1
%boyutuna çekmek amacýyla oluþturumuþ bir fonksiyondur.
function [values] = backTarget(x)
values = zeros(size(x,2),1);
  for i=1:size(x,2)
    for j=1:size(x,1)
      if x(j,i) == max(x(:,i))
          values(i,1) = j-1;
          break;
      end
    end
  end
end
%% 