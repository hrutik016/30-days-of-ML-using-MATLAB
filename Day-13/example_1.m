dataField1 = randi(10, 10, 1);
dataField2 = randi(10, 10, 1);

%generate timestamps for data
Timestamps = [datetime('now')-minutes(9):minutes(1):datetime('now')]';

%create timetable
dataTimeTable = timetable(Timestamps, dataField1, dataField2);
channelID = 1531697; %<Enter Channel ID>
writeKey = '4NJ7YPEU3WALLIL4'; %<Enter Write API KEY>

%Write 10 values to each field of your channel along timestamps
thingSpeakWrite(channelID, dataTimeTable, 'WriteKey', writeKey)

disp('process completed');