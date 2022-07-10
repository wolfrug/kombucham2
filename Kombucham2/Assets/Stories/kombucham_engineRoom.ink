// Engine room events

==engineRoomEvent_yellow_day1
Ichor hand over

Meet Xeri. who says that it's useless for the engines, wrong kind of processing - was left sitting too long. But maybe the Church can make something useful out of it?
{SetNextRoomEvent(Cathedral, 3, ->cathedralEvent_red_day1)}

->returnToMap(true) 
{NullRoomEvent(engineRoom)}