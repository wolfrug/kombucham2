// Time management!

==setupDailyStartEvents
// Use this tunnel to set up the events of the day -as they are at start-
// Various events might be triggered based on what has happened at other times
// Events might shift during the day depending on choices, but those are handled in the room-specific files

// comment out if you prefer to instead keep rooms from previous days
// might cause some issues though!
{CloseAllRooms()}

{currentDay:
- 0:
// DAY ZERO
{SetNextRoomEvent(Bridge, 1, ->bridgeevent_green_day0)}
- 1:
// DAY ONE -> could also go to specific stitches for ease of reading etc
}

->->

==function CloseAllRooms()
// Function to close all rooms, making it easier to only open the ones we want
{NullRoomEvent(Bridge)}
{NullRoomEvent(LivingQuarters)}
{NullRoomEvent(Hangar)}
{NullRoomEvent(Cathedral)}
{NullRoomEvent(EngineRoom)}
{NullRoomEvent(Market)}
{NullRoomEvent(Laboratory)}
