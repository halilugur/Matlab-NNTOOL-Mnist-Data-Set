%% YSA dan elde edilen de�erlerin 0 ile 9 aral���na �ekilmesi.

%Ysa similasyonundan elde edilen ��kt�lar�n 10x10000 boyutundan 10000x1
%boyutuna �ekmek amac�yla olu�turumu� bir fonksiyondur.
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