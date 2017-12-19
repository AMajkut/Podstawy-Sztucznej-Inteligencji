close all; clear all; clc;

WE = iris_dataset;
size(WE);
plot(WE(1,:),WE(2,:),'b.',WE(3,:),WE(4,:),'g.');
hold on; grid on;

% Parametry sieci:
dimensions   = [10 10];
coverSteps   = 100;
initNeighbor = 0;
topologyFcn  = 'hextop';
distanceFcn  = 'dist';

% Tworzenie SOM:
net = selforgmap(dimensions,coverSteps,initNeighbor,topologyFcn,distanceFcn);
net.trainParam.epochs = 500;

% Trenowanie sieci:
[net,tr] = train(net,WE);
y = net(WE);

grid on