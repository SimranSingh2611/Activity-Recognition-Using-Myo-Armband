clc
clear

train_size = 2000;
% Import train data, this data is eating data
trainTable = importdata('1503510449718_EMG.txt');

% Get a fix size number of data when eating, assign Y = 1 for all the data
% that is eating.
train_X = trainTable(1:train_size,2:end);
train_Y = ones(train_size, 1);

% Get not eating data
notEatTable = importdata('emg-1533522345.csv');
notEatTable = notEatTable.data;

% add the not eating data the train data table
for(i = 1 : train_size)
    one_row = notEatTable(i,2:end);
    train_X = [train_X; one_row];
    train_Y = [train_Y; 0]; % assign Y = 0 when not eat
end
    
% Assign Y for test data

folder = 'eat';
files = dir(fullfile(folder,'*EMG.txt'));

% KNN model 
rng(1)
KNNMdl = fitcknn(train_X,train_Y,'OptimizeHyperparameters','auto',... 
    'HyperparameterOptimizationOptions',... 
    struct('AcquisitionFunctionName','expected-improvement-plus'))

small = 100;
large = 0;
for file = 1 : 65
    path = files(file);
    path = path.name;
    path = strcat(folder,'\',path);
    testTable = importdata(path);
    test_X = testTable(:,2:end);
    [mt, nt] = size(testTable);
    test_Y = ones(mt,1);

    % Calculate KNN accuracy
    [KNNlabel,KNNaccuracy,score,cost] = KNN(KNNMdl,test_X,test_Y);
    
    if(small > KNNaccuracy)
        small = KNNaccuracy;
    end
    if(large < KNNaccuracy)
        large = KNNaccuracy;
    end
end

testTable = importdata('not_eat\emg-1533548631.csv'); 
testTable = testTable.data;

test_X = testTable(:,2:end);
    [mt, nt] = size(testTable);
    test_Y = zeros(mt,1);

    % Calculate KNN accuracy
    [KNNlabel,KNNaccuracy,score,cost] = KNN(KNNMdl,test_X,test_Y);
    
    if(small > KNNaccuracy)
        small = KNNaccuracy;
    end
    if(large < KNNaccuracy)
        large = KNNaccuracy;
    end

small
large
