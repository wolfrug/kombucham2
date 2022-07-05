INCLUDE testroom.ink
VAR variable = 45
VAR debug = true
VAR bridgeOpen = true
VAR livingQuartersOpen = true
VAR hangarOpen = true
VAR cathedralOpen = true
VAR marketOpen = true
VAR laboratoryOpen = true
VAR engineRoomOpen = true

VAR bridgeEvent = 0
VAR livingQuartersEvent = 0
VAR hangarEvent = 0
VAR cathedralEvent = 0
VAR marketEvent = 0
VAR laboratoryEvent = 0
VAR engineRoomEvent = 0

{debug:
->start
}

==start
When the portals opened in the ice of old Earth, opening a way to a new world our forefathers chose to venture forth into the unknown. 

Though others said it couldn't be done, they built <i>The Pentecost</i> and forged a new path into the darkness of the <i>Brine</i>.

They did not know what awaited them.

Perhaps if they had, they would have turned aside.

But this was always a one-way trip. The way to the old world is shut. And the only path left to us is onwards, towards the source, towards the <i>light</i>.
->mainView

==mainView
#wait
//Where do you want to go next? Debug is currently: {debug}
~marketOpen = RANDOM(0,1)>0
~livingQuartersOpen = RANDOM(0,1)>0
~bridgeOpen = RANDOM(0,1)>0
~engineRoomOpen = RANDOM(0,1)>0

~bridgeEvent = RANDOM(0,3)
~cathedralEvent = RANDOM(0,3)
~laboratoryEvent = RANDOM(0,3)

// These have to be in this order to display correctly!
{debug:
+ {bridgeOpen} Bridge (Event: {bridgeEvent})
->bridge
+ {livingQuartersOpen} Living Quarters (Event: {livingQuartersEvent})
->livingQuarters
+ {hangarOpen} Hangar (Event: {hangarEvent})
->hangar
+ {cathedralOpen} Cathedral (Event: {cathedralEvent})
->cathedral
+ {marketOpen} Market (Event: {marketEvent})
->market
+ {laboratoryOpen} Laboratory (Event: {laboratoryEvent})
->laboratory
+ {engineRoomOpen} Engine Room (Event: {engineRoomEvent})
->engineRoom
}
+ ->DONE

==bridge
#wait
This is the bridge.

+ Go back.
->mainView

==market
#wait
This is the market.

+ Go back.
->mainView

==livingQuarters
#wait
This is the living quarter.

+ Go back.
->mainView

==hangar
#wait
This is the hangar.

+ Go back.
->mainView

==engineRoom
#wait
This is the engine room.

+ Go back.
->mainView

==laboratory
#wait
This is the laboratory.

+ Go back.
->mainView

==cathedral
#wait
This is the cathedral.

+ Go back.
->mainView