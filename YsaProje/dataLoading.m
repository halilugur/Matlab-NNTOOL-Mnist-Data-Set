
    %% Yapay sinir a�� i�in gereken verilerin haz�rlanmas�.
    tic
    images = loadMNISTImages('train-images.idx3-ubyte');
    labels = loadMNISTLabels('train-labels.idx1-ubyte');

    testImages = loadMNISTImages('t10k-images.idx3-ubyte');
    testLabels = loadMNISTLabels('t10k-labels.idx1-ubyte');
    fprintf('Verilerin Y�klenmesinde Ge�en Zaman : %f\n',toc);
    
    %% 
    