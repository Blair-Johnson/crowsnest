function label2csv(filename)
    FileData = load(filename);
    timetable = FileData.gTruth.LabelData;
    empties = cellfun('isempty',timetable.boi);
    time_idx = seconds(timetable.Time);
    array = horzcat(time_idx(~empties),cell2mat(timetable.boi));
    csvwrite(strrep(filename,'.mat','.csv'),array);
end