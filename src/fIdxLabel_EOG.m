% Function that returns the index by label of allData file and Max index value.
% input (allData): allData file
% output (CN, MR, ML, MU, MD, MP): index values

% Remember that for this experiment the labels represent:
% CN, MR, ML, MU, MD, MP = "0", "1", "2", "3", "4", "5"

% Example: 
%   [[1..2] [3..4]...[12..13] [2]]=fIdxLabel_EOG(allData)

% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/

function [CN, MR, ML, MU, MD, MP] = fIdxLabel_EOG(allData)
    CN=[]; MR=[]; ML=[]; MU=[]; MD=[]; MP=[];
 
    CN=find(allData(:,end)==0);
    MR=find(allData(:,end)==1);
    ML=find(allData(:,end)==2);
    MU=find(allData(:,end)==3);
    MD=find(allData(:,end)==4);
    MP=find(allData(:,end)==5);
end