function [yMat, freqMat, nrchannels] = load_aud(ExpInfo)

addpath('/Users/oliviaxujiaming/Desktop/NYU_research/Project_2/Experiment code/Unimodal auditory localization/natsortfiles');
fileList = natsortfiles(dir(ExpInfo.fileDir));
yMat = cell(ExpInfo.nAudFile,1);
freqMat = zeros(1,ExpInfo.nAudFile);

for iF = 1: 21 % iF=1
fileName = fileList(iF).name; % fileList order
[tempY,freqMat(iF)] = psychwavread(fileName); % fileList order
% [tempY, freqMat(:,iF)] = psychwavread(fileName);
yMat{ExpInfo.fileOrder(iF),1} = tempY';
end

nrchannels = 2;

end