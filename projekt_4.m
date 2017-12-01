close all; clear all; clc;

PR=[0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;   
    0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1; 0 1;];
%wejscia do sieci i min/max wartosci wejsc
S=20; %ilosc neuronow na wyjsciu
net = newff(PR,S,{'tansig'},'trainlm','learnh');

   %A B C D E F G H I J K L N O P R S T U Y
WE=[0 1 0 1 1 1 0 1 1 1 1 1 1 0 1 1 0 1 1 1;
    1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 0 0;
    1 1 1 1 1 1 1 0 0 1 0 0 0 1 1 1 1 1 0 1;
    0 0 1 0 1 1 1 1 0 1 1 0 1 0 0 0 1 0 1 0;%
    1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 0 1 1;
    0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1;
    1 1 0 1 0 0 0 1 0 1 0 0 1 1 1 1 0 0 1 0;%
    1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0;
    1 1 0 0 1 1 0 1 0 0 1 0 0 0 1 1 1 1 0 1;
    1 1 0 0 1 1 1 1 0 0 0 0 1 0 1 1 1 0 0 0;
    1 0 0 1 0 0 1 1 0 1 0 0 1 1 0 0 0 0 1 0;%
    1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 0 0 1 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1;
    0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0;
    1 1 0 1 0 0 1 1 0 1 0 0 1 1 0 0 1 0 1 0;%
    1 1 1 1 1 1 0 1 1 0 1 1 1 0 1 1 1 0 0 0;
    0 1 1 1 1 0 1 0 0 0 0 1 0 1 0 0 1 1 1 1;
    0 1 1 1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 1 0;
    1 0 1 0 1 0 1 1 0 1 1 1 1 0 0 1 0 0 0 0;%
    ];

   %A B C D E F G H I J K L N O P R S T U Y
WY=[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; %A
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; %B
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; %C
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; %D
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0; %E
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0; %F
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0; %G
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0; %H
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0; %I
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0; %J
    0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0; %K
    0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0; %L
    0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0; %N
    0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0; %O
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0; %P
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0; %R
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0; %S
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0; %T
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0; %U
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1; %Y
    ];

lp.dr = 0.5; %wspó³czynnik zapominania
lp.lr = 0.9; %wspó³czynnik uczenia
dw=learnh([0],WE,[0],[0],WY,[0],[0],[0],[0],[0],lp,[0]);

net.trainParam.epochs = 1000; % maksymalna iloœæ epok
net.trainParam.goal = 0.001; % cel wydajno?ci
net.trainParam.lr=0.5; % wskaŸnik uczenia sieci
net=train(net, WE, dw);

% litery do testu: 
testA = [0; 1; 1; 0; 
         1; 0; 0; 1;
         1; 1; 1; 1;
         1; 0; 0; 1;
         1; 0; 0; 1];
testB = [1; 1; 1; 0; 
         1; 0; 0; 1;
         1; 1; 1; 0;
         1; 0; 0; 1;
         1; 1; 1; 0];
testC = [0; 1; 1; 1; 
         1; 0; 0; 0;
         1; 0; 0; 0;
         1; 0; 0; 0;
         0; 1; 1; 1];
testD = [1; 1; 1; 0; 
         1; 0; 0; 1;
         1; 0; 0; 1;
         1; 0; 0; 1;
         1; 1; 1; 0];
testE = [1; 1; 1; 1; 
         1; 0; 0; 0;
         1; 1; 1; 0;
         1; 0; 0; 0;
         1; 1; 1; 1];
testF = [1; 1; 1; 1; 
         1; 0; 0; 0;
         1; 1; 1; 0;
         1; 0; 0; 0;
         1; 0; 0; 0];
testG = [0; 1; 1; 1; 
         1; 0; 0; 0;
         1; 0; 1; 1;
         1; 0; 0; 1;
         0; 1; 1; 1];
testH = [1; 0; 0; 1; 
         1; 0; 0; 1;
         1; 1; 1; 1;
         1; 0; 0; 1;
         1; 0; 0; 1];
testI = [1; 0; 0; 0; 
         1; 0; 0; 0;
         1; 0; 0; 0;
         1; 0; 0; 0;
         1; 0; 0; 0];
testJ = [1; 1; 1; 1; 
         0; 0; 0; 1;
         0; 0; 0; 1;
         1; 0; 0; 1;
         0; 1; 1; 1];
testK = [1; 0; 0; 1; 
         1; 0; 1; 0;
         1; 1; 0; 0;
         1; 0; 1; 0;
         1; 0; 0; 1];
testL = [1; 0; 0; 0; 
         1; 0; 0; 0;
         1; 0; 0; 0;
         1; 0; 0; 0;
         1; 1; 1; 1];
testN = [1; 0; 0; 1; 
         1; 1; 0; 1;
         1; 0; 1; 1;
         1; 0; 0; 1;
         1; 0; 0; 1];     
testO = [0; 1; 1; 0; 
         1; 0; 0; 1;
         1; 0; 0; 1;
         1; 0; 0; 1;
         0; 1; 1; 0];      
testP = [1; 1; 1; 0; 
         1; 0; 0; 1;
         1; 1; 1; 0;
         1; 0; 0; 0;
         1; 0; 0; 0];     
testR = [1; 1; 1; 0; 
         1; 0; 0; 1;
         1; 1; 1; 0;
         1; 0; 1; 0;
         1; 0; 0; 1];      
testS = [0; 1; 1; 1; 
         1; 0; 0; 0;
         0; 1; 1; 0;
         0; 0; 0; 1;
         1; 1; 1; 0];
testT = [1; 1; 1; 0; 
         0; 1; 0; 0;
         0; 1; 0; 0;
         0; 1; 0; 0;
         0; 1; 0; 0];
testU = [1; 0; 0; 1; 
         1; 0; 0; 1;
         1; 0; 0; 1;
         1; 0; 0; 1;
         0; 1; 1; 0];     
testY = [1; 0; 1; 0; 
         1; 0; 1; 0;
         0; 1; 0; 0;
         0; 1; 0; 0;
         0; 1; 0; 0]; 
     
efekt1=sim(net, testA); % symulacja sieci
efekt=dw;

disp('Metoda Hebba:')
disp('A ='),disp(sum(efekt(1,':')));
disp('B ='),disp(sum(efekt(2,':')));
disp('C ='),disp(sum(efekt(3,':')));
disp('D ='),disp(sum(efekt(4,':')));
disp('E ='),disp(sum(efekt(5,':')));
disp('F ='),disp(sum(efekt(6,':')));
disp('G ='),disp(sum(efekt(7,':')));
disp('H ='),disp(sum(efekt(8,':')));
disp('I ='),disp(sum(efekt(9,':')));
disp('J ='),disp(sum(efekt(10,':')));
disp('K ='),disp(sum(efekt(11,':')));
disp('L ='),disp(sum(efekt(12,':')));
disp('N ='),disp(sum(efekt(13,':')));
disp('O ='),disp(sum(efekt(14,':')));
disp('P ='),disp(sum(efekt(15,':')));
disp('R ='),disp(sum(efekt(16,':')));
disp('S ='),disp(sum(efekt(17,':')));
disp('T ='),disp(sum(efekt(18,':')));
disp('U ='),disp(sum(efekt(19,':')));
disp('Y ='),disp(sum(efekt(20,':')));


efekt=efekt1;
% wypisywanie wartosci dla poszczegolnych liter
disp('Wartosci wyjsciowe algorytmu dla wszystkich liter:')
disp('A ='),disp(efekt(1));
disp('B ='),disp(efekt(2));
disp('C ='),disp(efekt(3));
disp('D ='),disp(efekt(4));
disp('E ='),disp(efekt(5));
disp('F ='),disp(efekt(6));
disp('G ='),disp(efekt(7));
disp('H ='),disp(efekt(8));
disp('I ='),disp(efekt(9));
disp('J ='),disp(efekt(10));
disp('K ='),disp(efekt(11));
disp('L ='),disp(efekt(12));
disp('N ='),disp(efekt(13));
disp('O ='),disp(efekt(14));
disp('P ='),disp(efekt(15));
disp('R ='),disp(efekt(16));
disp('S ='),disp(efekt(17));
disp('T ='),disp(efekt(18));
disp('U ='),disp(efekt(19));
disp('Y ='),disp(efekt(20));