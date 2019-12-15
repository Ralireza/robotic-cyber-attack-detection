function [ wa,a1,a2,wa_test,a1_test,a2_test ] = get_all_feature()
    wa_feature_train=zeros(1,11);
    wa_feature_test=zeros(1,11);
    
    a1_feature_train=zeros(1,11);
    a1_feature_test=zeros(1,11);
    
    a2_feature_train=zeros(1,11);
    a2_feature_test=zeros(1,11);

    
%     without attack features train
    for i=1:8
        wa_feature_train=[wa_feature_train;extract_feature(strcat('./DATA/without-attack/WA_',int2str(i),'.bag'),0)];
    end
    
%     attack 1 features train
    for j=1:6
        a1_feature_train=[a1_feature_train;extract_feature(strcat('./DATA/attack-1/a1-',int2str(j),'.bag'),1)];
    end
    
%     attack 2 features train
    for z=1:3
        a2_feature_train=[a2_feature_train;extract_feature(strcat('./DATA/attack-2/a2-',int2str(z),'.bag'),2)];
    end
    
%     build tests
    for k=1:2 
        wa_feature_test=[wa_feature_test;extract_feature(strcat('./DATA/without-attack/WA-V-',int2str(k),'.bag'),0)];
        a1_feature_test=[a1_feature_test;extract_feature(strcat('./DATA/attack-1/A1-V-',int2str(k),'.bag'),1)];
        a2_feature_test=[a2_feature_test;extract_feature(strcat('./DATA/attack-2/A2-V-',int2str(k),'.bag'),2)];
  
    end
    
    wa=wa_feature_train(2:end,:);
    a1=a1_feature_train(2:end,:);
    a2=a2_feature_train(2:end,:);
    
    wa_test=wa_feature_test(2:end,:);
    a1_test=a1_feature_test(2:end,:);
    a2_test=a2_feature_test(2:end,:);

end

