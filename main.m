[wa,a1,a2,wa_test,a1_test,a2_test]=get_all_feature();

X = [wa(:,1:10);a1(:,1:10)];
Y = [wa(:,11);a1(:,11)];
target=[wa_test;a1_test];

classifiers=["knn","rf","ab","nb","lda","lr","cart"]
result = [];
VarNames = {'classifier','accuracy', 'precision', 'recall', 'Fscore'};

for n = 1 : length(classifiers)
    mdl=classifier( X,Y,classifiers(n));
    predicted = predict(mdl,target(:,1:10));
    e=eval(target(:,11),predicted(:,1));
    T = table(classifiers(n),e.accuracy(1,1),e.precision(1,1),e.recall(1,1),e.Fscore(1,1), 'VariableNames',VarNames);
    result=[result;T];
end

result