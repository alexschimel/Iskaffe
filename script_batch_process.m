
% attempt at writing a script to batch-process a bunch of files without
% converting. I want to give in input a folder of raw files and for this
% script to go through all of them one at a time and for each, extract the
% datagrams, run the algo to detect the number of bad beams, bad pings,
% etc., export/save the results... and when it's all done, summarize the
% results

% first try to run on a few files. When you have something that works,
% modify it by using a config/project file to allow resuming a job that was
% interrupted. This log file would list the folder and all the files with
% checks that the folder contents have not changed.

clear all
clc

% get an input folder of raw data files
folder_init = 'C:\Users\Schimel_Alexandre\Data\Kongsberg all\KV-Clinton_2022_EM2040_b45-extracts';

% list all files in it, recursively
recursive_flag = 1;
results.File = CFF_list_raw_files_in_dir(folder_init, recursive_flag);
nFiles = numel(results.File);

% initialise a table to log the results for each file
results.nPings = nan(nFiles,1);
results.nBadPings = nan(nFiles,1);
results.percBadPings = nan(nFiles,1);
results.nSoundings = nan(nFiles,1);
results.nBadSoundings = nan(nFiles,1);
results.percBadSoundings = nan(nFiles,1);

% start a loop for each file
for ii = 1:nFiles
    
    file = results.File{ii};
    fprintf('%i/%i: line %s\n',ii,nFiles,file);
    
    % extract the desired data from the file
    fData = CFF_convert_raw_files(file,...
        'conversionType', 'seafloor',...
        'saveFDataToDrive', 0,...
        'forceReconvert', 1,...
        'outputFData', 1,...
        'abortOnError', 1,...
        'comms', 'oneline');
    
    % run the desired algorithm on the data extracted
    fData = CFF_analyze_backscatter({fData},...
        'comms', 'oneline');
    fData = fData{1};
    
    % log the results in the table
    results.nPings(ii,1) = numel(fData.X8_1P_PingCounter);
    results.nBadPings(ii,1) = sum(fData.X_1P_badPing);
    results.percBadPings(ii,1) = round(results.nBadPings(ii).*100./results.nPings(ii),2);
    results.nSoundings(ii,1) = numel(fData.X8_BP_ReflectivityBS);
    results.nBadSoundings(ii,1) = sum(~fData.X_BP_goodData(:));
    results.percBadSoundings(ii,1) = round(results.nBadSoundings(ii).*100./results.nSoundings(ii),2);
    
end

% summary per file
resultsTable = struct2table(results);

% compiled results:
resultsTable(end+1,:) = {'total',sum(results.nPings),sum(results.nBadPings),...
    round(sum(results.nBadPings).*100./sum(results.nPings),2),...
    sum(results.nSoundings),sum(results.nBadSoundings),...
    round(sum(results.nBadSoundings).*100./sum(results.nSoundings),2)};

disp(resultsTable);

writetable(resultsTable,'test.csv');
