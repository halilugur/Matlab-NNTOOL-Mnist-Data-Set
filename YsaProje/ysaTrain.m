%% Ysa Eðitimi için gereken tanýmlamalar.

% Bu kod yapay sinir aðlarýný oluþturan fonksiyondur. Katman sayýsýný,
% aktivasyon fonksiyonunu ve öðrenme þekli gibi parametreler girerek eðitim
% için að hazýrlanmasý yapýlmaktadýr.
net = newff(minmax(images),[66 10],{'logsig' 'logsig'},'trainscg');

% (Að için eðitim aþamsýnda maksimum döngü sayýsýný,
% minimum hata oraný ve istenilen performans oranýlarý
% gibi deðerler tanýmlanmýþtýr.)
net.trainParam.goal = 1e-6;
net.trainParam.min_grad = 1e-7;
net.trainParam.epochs = 1300;
net.performFcn = 'mse';

% Burada aðýmýzý, eðitecek olan resimler ve istenilen hedef matrisin deðerlerini vererek eðitimin baþlamasý
% için gereken komutlar yer almaktadýr. Ayný zamanda eðitimin süresini
% ölçebilmek amacýyla tic ve toc komutlarý kullanýlmýþtýr.
tic
[net,tr] = train(net,images,dataTarget(labels));
fprintf('Verilerin Eðitilmesinde Geçen Zaman : %f\n',toc);

%%
