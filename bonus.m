clear all;
load digits;


m = [2,5,10,20];
numIter = size(m,2);
avgErrTest = zeros(numIter,1);

for iter=1:numIter
    [avgErrTest(iter,1)] = pca_classifier(m(1,iter));    
end



figure;
hold on;

plot(m,avgErrTest,'r-');

title('avg classification error rate VS PC');
xlabel('number of Principle Component');
ylabel('avg classification error rate');


