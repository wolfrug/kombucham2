// Bridge events

==bridgeevent_green_day0
Test event for day 0. Select escalate to change it to a yellow event.

Select open event in LQ to open an event in LQ.

Select empty this event to null it and go back.

Select done to go back, leaving this event open.

* Escalate
Escalating the event in the bridge to a yellow event.
{SetNextRoomEvent(Bridge, 2, ->bridgeevent_yellow_day0)}

* Open event in LQ
{SetNextRoomEvent(LivingQuarters, 1, ->livingquarters_testEvent)}

* Empty this event.
{NullRoomEvent(Bridge)}

+ Go back.
// General gather to return
- ->returnToMap(false)

==bridgeevent_yellow_day0
Test event for day 0, set through escalate choice. Woop.

* Escalate.
We escalate to a red event!
{SetNextRoomEvent(Bridge, 2, ->bridgeevent_red_day0)}

* {livingQuartersEventType==0 && livingquarters_testEvent<1} Open event now in LQ.
This isn't visible if you've already visited/have already visited the LQ event.
{SetNextRoomEvent(LivingQuarters, 1, ->livingquarters_testEvent)}

* Empty this event.
{NullRoomEvent(Bridge)}

+ Go back

- ->returnToMap(false)

==bridgeevent_red_day0
This event will further time to the next day!

* Neat.
You don't have to null events etc manually when we skip days.
->returnToMap(true)


