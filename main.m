bag = rosbag('./DATA/without-attack/WA_2017-03-06-17-48-50.bag')
start = bag.MessageList
msgs = readMessage(bag);
