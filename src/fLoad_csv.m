% Function to load a .csv file
% input: path -> Address where the files are stored
% input: str_file_name -> String file name to be uploaded
% return: Data -> File uploaded to worspace
% Example to use:
%   path = fullfile('./data/');%data folder
%   Data = fLoad_EEG_csv(path,'AllDataFeatures');

% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/

function [Data] = fLoad_csv(path,str_file_name)
    path1=fullfile(path,strcat(str_file_name,'.csv'));
    data=readtable(path1);%Select CSV file
    Data=table2array(data);% Array Double
end