// Hangar events

==hangarEvent_yellow_day1

Narrator "Back on the sub (the next morning), Mal was rushed to the infirmary last night and you are still waiting for news.

Commander Rilke is waiting for you and Jae, her expression thunderous. 

Rilke?normal "Surprised by a Sapper? You should both know better."

*Make excuses
*Apologise
-
Rilke?normal "Save it. This mess is out of my hands now."

Rille?normal "The Captain wants to see you. Head to the bridge for debriefing."

And Officers...

*MC "Yes?"
*MC "Commander?"

-
Rilke?normal "Don't fuck this up..."

*Go to the bridge for debriefing.

{SetNextRoomEvent(Bridge, 2, ->bridgeevent_yellow_day1)}


->bridgeevent_yellow_day1
{NullRoomEvent(hangar)}


