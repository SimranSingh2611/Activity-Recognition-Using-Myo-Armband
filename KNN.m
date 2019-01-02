function [KNNlabel,KNNaccuracy,score,cost] = KNN(KNNMdl,X_test,y_test)
% input data 
xtest = X_test;
ytest = y_test;

% cross validation
rng(1); % For reproducibility
CVKNNMdl = crossval(KNNMdl);
classError = kfoldLoss(CVKNNMdl);

% predict xtest label
[KNNlabel,score,cost] = predict(KNNMdl,xtest);

% get KNN acuracy
KNNaccuracy=sum(ytest==KNNlabel)/numel(ytest)*100;

answer = sprintf('KNN Percentage Accuracy: %f',KNNaccuracy);
disp(answer);
end 
