function [ Mdl ] = classifier( X,Y,name)
% train a model by name and return model of trained data
switch name
    case "knn"
        Mdl = fitcknn(X,Y,'NumNeighbors',3,'Standardize',1);
    case "rf"
        Mdl=fitcensemble(X,Y,'Method','Bag');
    case "ab"
        Mdl=fitcensemble(X,Y,'Method','AdaBoostM1');
    case "nb"
        Mdl=fitcnb(X,Y,'Distribution','kernel');      
    case "lda"
        Mdl=fitcdiscr(X,Y,'DiscrimType','pseudoquadratic'); 
    case "lr"
        Mdl = fitclinear(X,Y,'Learner','logistic')
    case "cart"
        Mdl = fitctree(X,Y);  
    otherwise
        disp('bad param')
end

end

