// Market events


==marketevent_yellow_day1
Go drinking with team - Jae and a few of the others clustered around a table in the galley. Maybe some news about Mal's recovery.

You chat with the others, and at the end Jae pulls you aside to discuss the debriefing.

//if you didn't tell the Admiral the truth

Jae?normal "I hope you know what you're doing." Jae says. And slips you the info of a guy who could help.
{SetNextRoomEvent(Laboratory, 2, ->laboratoryevent_yellow_day1)}

* Leave.
{NullRoomEvent(Market)}
->returnToMap
