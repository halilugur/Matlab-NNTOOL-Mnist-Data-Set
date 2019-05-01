%% Ysa eðitimi için çýktýlarýn istenilen oranlara çekilmesi iþlemini yapan foksiyondur.
function [ targetValues ] = dataTarget(labels )
eyeMat=eye(10);
targetValues=zeros(10,60000);
  for i=1:60000
      switch(labels(i,1))
          case 0
              targetValues(:,i)=eyeMat(:,1);
          case 1
              targetValues(:,i)=eyeMat(:,2);
          case 2
              targetValues(:,i)=eyeMat(:,3);
          case 3
              targetValues(:,i)=eyeMat(:,4);
          case 4
              targetValues(:,i)=eyeMat(:,5);
          case 5
              targetValues(:,i)=eyeMat(:,6);
          case 6
              targetValues(:,i)=eyeMat(:,7);
          case 7
              targetValues(:,i)=eyeMat(:,8);
          case 8
              targetValues(:,i)=eyeMat(:,9);
          case 9
              targetValues(:,i)=eyeMat(:,10);
    end   
  end
end
%% 

