// Bridge events

==bridgeevent_yellow_day1

Report to the bridge for debriefing! The Captain is waiting for you at the Helm console.  You've only ever glimpsed the Admiral from a distance, and you find your mouth is unusually dry. 

He looks furious.

Jae?normal "Hey, we'll get through this together. I'm right here by your side."

Sykes?normal "As am I."

MC "Admiral." You give him your sharpest salute, though it's a bit rusty.

He looks up, meets your gaze, and you realise you mistook his exhaustion for anger when you walked in. He looks like a man at the end of his tether. 

Roque?normal "Care to explain yourselves?" A voice asks from across the room, and Archbishop Roque steps into the light.

*Say Something.
*Say something else.

- Admiral/Church. guy argue briefly.

Alvaro?normal "Tells him to get out, this is the Admirals purview. 

Roque leaves, but expects "his own accounting of what happened." 

You half expect the Visionary to pop up from behind the console, and then all three of the most important people on this sub can berate you for almost getting your crew-mate killed.

Almost. At least...you hope.

Roque?normal "This affects us all, and you know it [admiral's given name]" He says, before exiting the room with a flourish.

Alvaro?normal "Report." The Admiral tells you with a sigh.

* Tell the truth. 
The Admiral takes you aside after the briefing, and tells you to keep the orb under wraps. Take it to the Lab, there's someone there who will help. 
{SetNextRoomEvent(Laboratory, 2, ->laboratoryevent_yellow_day1alt)}

* Lie, and hide the orb.
Something something disappointed in this outcome. 
{SetNextRoomEvent(Market, 2, ->marketevent_yellow_day1)}

-

Alvaro?normal "You're dismissed."

*Leave. 
{NullRoomEvent(Bridge)} 


- ->returnToMap(false)


