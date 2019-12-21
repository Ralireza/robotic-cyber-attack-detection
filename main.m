% geting the feature of .bag file 
[wa,a1,a2,wa_test,a1_test,a2_test]=get_all_feature();

% train data
X = [wa(:,1:10);a2(:,1:10)];
% labels
Y = [wa(:,11);a2(:,11)];
% test data
target=[wa_test;a2_test];

% all classifiers implemented
classifiers=["knn","rf","ab","nb","lda","lr","cart"]
result = [];
% table for show
VarNames = {'classifier','accuracy', 'precision', 'recall', 'Fscore'};

%  loop on classifier name
for n = 1 : length(classifiers)
%  pass the data and classifier name to function
    mdl=classifier( X,Y,classifiers(n));
%     predicted data
    predicted = predict(mdl,target(:,1:10));
%     evaluate data by function
    e=eval(target(:,11),predicted(:,1));
%     showing result as a table
    T = table(classifiers(n),e.accuracy(1,1),e.precision(1,1),e.recall(1,1),e.Fscore(1,1), 'VariableNames',VarNames);
    result=[result;T];
end

result