function [ f ] = extract_feature( bagFileName , label )
    bag = rosbag(bagFileName);
    topicSelect = select(bag, 'Topic', '/kio_rtls_String_talker/4061/out');
%     bag.MessageList.Topic
    msgStructs = readMessages(topicSelect);
    features = zeros(1,11);
    for  i=1:bag.NumMessages
        startIndex = split(msgStructs{i}.Data);
        features=[features;str2double(startIndex{3}) str2double(startIndex{5}) str2double(startIndex{7}) str2double(startIndex{9}) str2double(startIndex{11}) str2double(startIndex{13}) str2double(startIndex{15}) str2double(startIndex{16}) str2double(startIndex{17}) str2double(startIndex{18}) label];
    end
    f=features(2:end , :);
%     size(f)
end

