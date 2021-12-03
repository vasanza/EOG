% Function that returns the list of folder with Data
% input (path): address of the main data folder.
% output (folderNames): Complete list of .CSV file in folder
% Example: 
%   path = fullfile('./Data/');
%   folderNames=FindFolders(path)
% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/
function [folders] = FindFolders(path)
    files = dir(path);
    dirFlags = [files.isdir];
    folders = files(dirFlags);
    folders = folders(~ismember({folders.name},{'.','..','logfiles'}));
end
%How to use function with FindMAT or FindCSV
%path = fullfile('./Data/');
%folderNames=FindFolders(path)
 %for i=1:length(folderNames)
 %   path1=fullfile(path,folders(i).name);
 %   filenames=FindMAT(path1);
 %   %filenames=FindCSV(path1);
 %   len_filenames = length(filenames);
 %   data=load(fullfile(path1,filenames(x).name));%select your x file
 %   data=cell2mat(struct2cell(data));
 % end