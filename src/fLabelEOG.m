% Function that returns the label of each file with EOG data.
% input (FolderName): Folder Name
% output (Label): Numeracy label

% Remember that for this experiment the labels represent:
% CN, MR, ML, MU, MD, MP = "0", "1", "2", "3", "4", "5"

% Example: 
%   Label=fLabelEEG('CN') -> 2

% More examples: https://github.com/vasanza/Matlab_Code
% Read more: https://vasanza.blogspot.com/

function [Label] = fLabelEOG(FolderName)
    switch FolderName
    case 'CN' 
        Label=0;
    case 'MR' 
        Label=1;
    case 'ML' 
        Label=2;
    case 'MU' 
        Label=3;
    case 'MD' 
        Label=4;
    case 'MP' 
        Label=5;
    otherwise
        Label=nan;
    end
end