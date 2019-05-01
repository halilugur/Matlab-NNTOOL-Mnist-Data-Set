%% Ysa E�itimi i�in gereken tan�mlamalar.

% Bu kod yapay sinir a�lar�n� olu�turan fonksiyondur. Katman say�s�n�,
% aktivasyon fonksiyonunu ve ��renme �ekli gibi parametreler girerek e�itim
% i�in a� haz�rlanmas� yap�lmaktad�r.
net = newff(minmax(images),[66 10],{'logsig' 'logsig'},'trainscg');

% (A� i�in e�itim a�ams�nda maksimum d�ng� say�s�n�,
% minimum hata oran� ve istenilen performans oran�lar�
% gibi de�erler tan�mlanm��t�r.)
net.trainParam.goal = 1e-6;
net.trainParam.min_grad = 1e-7;
net.trainParam.epochs = 1300;
net.performFcn = 'mse';

% Burada a��m�z�, e�itecek olan resimler ve istenilen hedef matrisin de�erlerini vererek e�itimin ba�lamas�
% i�in gereken komutlar yer almaktad�r. Ayn� zamanda e�itimin s�resini
% �l�ebilmek amac�yla tic ve toc komutlar� kullan�lm��t�r.
tic
[net,tr] = train(net,images,dataTarget(labels));
fprintf('Verilerin E�itilmesinde Ge�en Zaman : %f\n',toc);

%%
