function [ f ] = extract_feature( bagFileName , label )
%   read bag file by name
    bag = rosbag(bagFileName);
%     select bag file by specific Topic
    topicSelect = select(bag, 'Topic', '/kio_rtls_String_talker/4061/out');
%   read messages of selected Topic
    msgStructs = readMessages(topicSelect);
%     initial feature vector
    features = zeros(1,11);
%     loop on all messages 
    for  i=1:bag.NumMessages
        startIndex = split(msgStructs{i}.Data);
%         extract this index = {3,5,7,9,11,13,15,16,17,18,label}
        features=[features;str2double(startIndex{3}) str2double(startIndex{5}) str2double(startIndex{7}) str2double(startIndex{9}) str2double(startIndex{11}) str2double(startIndex{13}) str2double(startIndex{15}) str2double(startIndex{16}) str2double(startIndex{17}) str2double(startIndex{18}) label];
    end
    f=features(2:end , :);

end

