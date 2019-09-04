%Reading txt file
eachData = importdata('pca-data.txt');

%Principal Component Analysis
    %Each mean calcualting
meanX=meanCal(eachData(:,1))
meanY=meanCal(eachData(:,2))
meanZ=meanCal(eachData(:,3))

totalMean=[meanX, meanY, meanZ];

covariMatrix=(eachData-totalMean)' * eachData-totalMean;
covariMatrix=covariMatrix/size(eachData,1);
[eigVec,eigValue] = eig(covariMatrix);

% first two principal components
firstEigenVector=eigVec(:,1)
firstEigenValue=eigValue(1,1)

secondEigenVector=eigVec(:,2)
secondEigenValue=eigValue(2,2)




% figure
% scatter3(eachData(:,1),eachData(:,2),eachData(:,3),'ro');
% hold on
% scatter3(meanX,meanY,meanZ,10000,'y+');
% scatter3(meanX,meanY,meanZ,10000,'b.');
% %plotv(eigVec + totalMean' ,'-')
% %plotv(eigVec  ,'-')
% hold off
% 
% 
% % projection
% figure
% projectedData=eachData * eigVec;
% scatter(projectedData(:,1),projectedData(:,2));
% figure
% scatter(projectedData(:,1),projectedData(:,3));
% figure
% scatter(projectedData(:,2),projectedData(:,3));
% %scatter3(projectedData(:,1),projectedData(:,2),projectedData(:,3));
% hold off

