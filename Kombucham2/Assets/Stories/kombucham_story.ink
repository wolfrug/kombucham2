
// Time management
INCLUDE kombucham_timeManagement.ink

// Locations on ship
INCLUDE kombucham_bridge.ink
INCLUDE kombucham_hangar.ink
INCLUDE kombucham_cathedral.ink
INCLUDE kombucham_livingQuarters.ink
INCLUDE kombucham_market.ink
INCLUDE kombucham_laboratory.ink
INCLUDE kombucham_engineRoom.ink
// Locations off ship
INCLUDE kombucham_offship.ink

VAR variable = 45
VAR debug = true

VAR loading = false

VAR bridgeOpen = true
VAR livingQuartersOpen = true
VAR hangarOpen = true
VAR cathedralOpen = true
VAR marketOpen = true
VAR laboratoryOpen = true
VAR engineRoomOpen = true

// Event type goes from 0 (none), 1 (green), 2 (yellow), 3 (red)
// Event type is simply a hint to the player of the event type
VAR bridgeEventType = 0
VAR livingQuartersEventType = 0
VAR hangarEventType = 0
VAR cathedralEventType = 0
VAR marketEventType = 0
VAR laboratoryEventType = 0
VAR engineRoomEventType = 0

VAR bridgeEvent = ->fallbackEvent
VAR livingQuartersEvent = ->fallbackEvent
VAR hangarEvent = ->fallbackEvent
VAR cathedralEvent = ->fallbackEvent
VAR marketEvent = ->fallbackEvent
VAR laboratoryEvent = ->fallbackEvent
VAR engineRoomEvent = ->fallbackEvent

LIST rooms = Bridge, LivingQuarters, Hangar, Cathedral, Market, Laboratory, EngineRoom


VAR currentDay = 0

{debug:
->start
}

==start
(Click anywhere to continue)
{loading:
->returnToMap
}
->setupDailyStartEvents->
{CloseAllRooms()}
->mainstory_start

==mainView
#wait
~loading = true // or rather, saving is true
{debug: [DEBUG] Where do you want to go next?}

// These have to be in this order to display correctly!
{debug:
+ {bridgeOpen} Bridge (Event: {bridgeEventType})
->bridgeView
+ {livingQuartersOpen} Living Quarters (Event: {livingQuartersEventType})
->livingQuartersView
+ {hangarOpen} Hangar (Event: {hangarEventType})
->hangarView
+ {cathedralOpen} Cathedral (Event: {cathedralEventType})
->cathedralView
+ {marketOpen} Market (Event: {marketEventType})
->marketView
+ {laboratoryOpen} Laboratory (Event: {laboratoryEventType})
->laboratoryView
+ {engineRoomOpen} Engine Room (Event: {engineRoomEventType})
->engineRoomView
}
+ {debug} ->noChoicesLeft
+ ->DONE

==bridgeView
->bridgeEvent

==marketView
->marketEvent

==livingQuartersView
->livingQuartersEvent

==hangarView
->hangarEvent

==engineRoomView
->engineRoomEvent

==laboratoryView
->laboratoryEvent

==cathedralView
->cathedralEvent

==returnToMap
->mainView


==skipTime(days)
// Skips time forward, and sets up events
~currentDay+=days
->setupDailyStartEvents->
// all done?
{debug: [DEBUG] Ended day, beginning new day (nr: {currentDay})}
->mainView

==fallbackEvent
This event is a fallback event and should not be reached.
->returnToMap

==noChoicesLeft
[Ran out of content!]
->END

==endDay==
->skipTime(1)

==function SetNextRoomEvent(room, type, ->eventref)
// Sets the next room event for the room in question
// also sets the room to inactive/active based on type, if set
{debug: [DEBUG] Setting room event in {room} to {eventref} with value {type}}
~temp setRoomToInactiveIf0 = true
{room:
- Bridge:
~bridgeEventType = type
~bridgeEvent = eventref
{setRoomToInactiveIf0:
    {type>0:
    ~bridgeOpen = true
    - else:
    ~bridgeOpen = false
    }
}
- LivingQuarters:
~livingQuartersEventType = type
~livingQuartersEvent = eventref
{setRoomToInactiveIf0:
    {type>0:
    ~livingQuartersOpen = true
    - else:
    ~livingQuartersOpen = false
    }
}
- Hangar:
~hangarEventType = type
~hangarEvent = eventref
{setRoomToInactiveIf0:
    {type>0:
    ~hangarOpen = true
    - else:
    ~hangarOpen = false
    }
}
- EngineRoom:
~engineRoomEventType = type
~engineRoomEvent = eventref
{setRoomToInactiveIf0:
    {type>0:
    ~engineRoomOpen = true
    - else:
    ~engineRoomOpen = false
    }
}
- Laboratory:
~laboratoryEventType = type
~laboratoryEvent = eventref
{setRoomToInactiveIf0:
    {type>0:
    ~laboratoryOpen = true
    - else:
    ~laboratoryOpen = false
    }
}
- Cathedral:
~cathedralEventType = type
~cathedralEvent = eventref
{setRoomToInactiveIf0:
    {type>0:
    ~cathedralOpen = true
    - else:
    ~cathedralOpen = false
    }
}
- Market:
~marketEventType = type
~marketEvent = eventref
{setRoomToInactiveIf0:
    {type>0:
    ~marketOpen = true
    - else:
    ~marketOpen = false
    }
}
}
===function NullRoomEvent(room)
// Nulls the room event
// also sets the room to inactive/active based on type, if set
{debug: [DEBUG] Nulling room events in {room}}
~temp setRoomToInactiveIf0 = true
{room:
- Bridge:
~bridgeEventType = 0
~bridgeEvent = ->fallbackEvent
{setRoomToInactiveIf0:
    ~bridgeOpen = false
}
- LivingQuarters:
~livingQuartersEventType = 0
~livingQuartersEvent = ->fallbackEvent
{setRoomToInactiveIf0:
    ~livingQuartersOpen = false
}
- Hangar:
~hangarEventType = 0
~hangarEvent = ->fallbackEvent
{setRoomToInactiveIf0:

    ~hangarOpen = false
}
- EngineRoom:
~engineRoomEventType = 0
~engineRoomEvent = ->fallbackEvent
{setRoomToInactiveIf0:
    ~engineRoomOpen = false
}
- Laboratory:
~laboratoryEventType = 0
~laboratoryEvent = ->fallbackEvent
{setRoomToInactiveIf0:
    ~laboratoryOpen = false
}
- Cathedral:
~cathedralEventType = 0
~cathedralEvent = ->fallbackEvent
{setRoomToInactiveIf0:
    ~cathedralOpen = false
}
- Market:
~marketEventType = 0
~marketEvent = ->fallbackEvent
{setRoomToInactiveIf0:
    ~marketOpen = false
}
}
