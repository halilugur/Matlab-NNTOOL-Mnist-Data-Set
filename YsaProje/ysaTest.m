%% Elde etti�imiz e�itim sonucu Yapay Sinir A��n� denemek amac�yla sim metodu kullan�lm��t�r.
tic
sonuclar = backTarget(sim(net,testImages));
fprintf('Verilerin Testinde Ge�en Zaman : %f\n',toc);
%% 
%% Test sonucunda elde edilen verilerin ay�klanmas� amac�yla tan�mlamalar ve ay�klamalar yap�lm��t�r.
hataliImages = zeros(size(testImages,1),1);
hataliImagesIndex = zeros(1,1);
hataOrani = zeros(1,10);

dogruImages = zeros(size(testImages,1),1);
dogruImagesIndex = zeros(1,1);
dogruOrani = zeros(1,10);

hataSayisi = 0;
dogruSayisi = 0;
for i=1:size(sonuclar,1)
    if sonuclar(i,1) == testLabels(i,1)
        dogruSayisi = dogruSayisi + 1;
        dogruImages(:,dogruSayisi) = testImages(:,i);
        dogruImagesIndex(1,dogruSayisi) = i;
        dogruOrani(1,sonuclar(i,1)+1) = dogruOrani(1,sonuclar(i,1)+1) + 1;
    else
        hataSayisi = hataSayisi + 1;
        hataliImages(:,hataSayisi) = testImages(:,i);
        hataliImagesIndex(1,hataSayisi) = i;
        hataOrani(1,sonuclar(i,1)+1) = hataOrani(1,sonuclar(i,1)+1) + 1;
    end
end
%% 
%% Verilerin Ekrana G�sterilmesi.
sprintf('Toplam Do�ru Say�s� : %d',dogruSayisi)
sprintf('Toplam Hata Say�s� : %d',hataSayisi)

sprintf('Toplam Do�ru Y�zdesi :%% %f',dogruSayisi*100/size(sonuclar,1))
sprintf('Toplam Hata Y�zdesi :%% %f',hataSayisi*100/size(sonuclar,1))

for i = 1:size(dogruOrani,2)
    sprintf('%d Do�ru Y�zdesi :%% %f',i-1,dogruOrani(1,i)*100/size(sonuclar,1))
end

for i = 1:size(hataOrani,2)
    sprintf('%d Hata Y�zdesi :%% %f',i-1,hataOrani(1,i)*100/size(sonuclar,1))
end
%%
