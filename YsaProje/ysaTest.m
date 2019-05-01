%% Elde ettiðimiz eðitim sonucu Yapay Sinir Aðýný denemek amacýyla sim metodu kullanýlmýþtýr.
tic
sonuclar = backTarget(sim(net,testImages));
fprintf('Verilerin Testinde Geçen Zaman : %f\n',toc);
%% 
%% Test sonucunda elde edilen verilerin ayýklanmasý amacýyla tanýmlamalar ve ayýklamalar yapýlmýþtýr.
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
%% Verilerin Ekrana Gösterilmesi.
sprintf('Toplam Doðru Sayýsý : %d',dogruSayisi)
sprintf('Toplam Hata Sayýsý : %d',hataSayisi)

sprintf('Toplam Doðru Yüzdesi :%% %f',dogruSayisi*100/size(sonuclar,1))
sprintf('Toplam Hata Yüzdesi :%% %f',hataSayisi*100/size(sonuclar,1))

for i = 1:size(dogruOrani,2)
    sprintf('%d Doðru Yüzdesi :%% %f',i-1,dogruOrani(1,i)*100/size(sonuclar,1))
end

for i = 1:size(hataOrani,2)
    sprintf('%d Hata Yüzdesi :%% %f',i-1,hataOrani(1,i)*100/size(sonuclar,1))
end
%%
