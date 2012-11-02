function [ avg_err_rate ] = pca_classifier( k )

load digits;

[base,mean,data_train] = pcaimg([train2,train3],k);
[base,mean,data_test] = pcaimg([test2,test3],k);

label_train = [ones(1, 300) zeros(1,300); zeros(1,300) ones(1,300) ];
label_test = [ones(1, 300) zeros(1,300); zeros(1,300) ones(1,300) ];

result = knn(1, data_train, label_train, data_test);
total = sum( abs( label_test(1,:) - result(1,:)));
avg_err_rate = total/600;
end

