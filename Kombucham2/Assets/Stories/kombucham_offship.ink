// Offship events

==mainstory_start
Narrator "When the Portals opened in the ice of old Earth we were the one's who breached the gap and ventured forth into the unknown - we the poor, the desperate, the displaced."

Narrator "There was nothing left for us on our own planet, and so we risked it all, resolved to forge a new home here in the waters of a drowned alien world."

Narrator "We don't know who brought us here, or why."

Narrator "The Portals are unstable, and though we've harnessed them in our path towards colonisation, there have been many struggles, and many tragedies." 

Narrator "Whoever made the portals is long gone. The ruins of a hundred civilisations litter the ocean floor, fellow wormhole travellers who fell afoul of the dangers that lurk in these dark waters." 

Narrator "Times are changing. The way back to Earth is shut, and if we are to survive here we will have to uncover the secrets that brought us to this place."

Narrator "Many have tried before us."

Narrator "Many have failed."

Narrator "The crew of <i>The Pentecost</i> follow in their footsteps, a thousand souls hurtling into the void."

Narrator "A ship of fools, a dangerous experiment, or mankind's last great hope - the story varies depending on who you ask."

Narrator "But if you succeed...everything could change."


#background.test #wait


Narrator "You are a Reconnaisance diver, a grunt for the Admiralty aboard <i>"The Pentecost"</i>, a nobody really - but even nobodies have secrets.

Narrator "You and your team have been sent off-ship to investigate a wreck. There's no distress signal, no signs of life, and you've passed a hundred vessels like it since you set out from the Base months ago. 

Narrator "So what makes this wreck so special?"

->thewreck_day0

==thewreck_day0

Mal?normal "I don't understand why we're wasting time on this. Everyone aboard is clearly dead." 

Hull integrity still seems fine, and with flashlights on your team surveys the halls. You come to a crossroads.

Jae?normal ""Split up?" He proposes. 

Mal?normal ""...And home in time for dinner by 2nd bell." Mal chimes in.

Your'e all eager to be done with this fetchquest.

* "Fine. Meet back at the bridge in five."
* "Do we really think that's a good idea?"
    Jae?normal "Scared, Officer?"
    
    "As if."
    "Just don't come crying to me when a zombie octopus eats your brains, Jae."
    
- ->wreckrooms

=wreckrooms


*Go to the Hold.
    3. THE HOLD

    The place is in disarray, shattered boxes littering the floor. Whatever they were up to, they were equipped for a long journey. There's even a rudimentary ichor processing bay at the back of the hold with the hunting gear.
    
    You find some intact ichor cores amongst the detritus and tuck them into your pack.->wreckrooms


*Go to the Sacristy.
    2. THE SACRISTY
    
    You find the small room tucked into a converted closet, a mobile chapel of holy objects and ephemera. Clearly the crew were believers. They gathered here to die, and from the looks of it they've been down here for a while.

    At the centre of the shrine you fine a holy seal, the mark of the Archbishop himself. They must have been working for him directly. You leave the dead to their slumber.->wreckrooms


*Go to the Stateroom.
    1. THE STATEROOM (name for cpt quarters on a sub)

    Everything remains untouched, as if the Captain just left the room mere moments ago. There are charts on the walls and hydrographic surveys of areas you've never seen before. Seems they were looking for something, but what?

    You find an artefact on the table. A [x]cube, dead alien tech, but this one is functional. You could probably get some information off of this, and find what they were up to.->wreckrooms


* -> 

As you exit the room you hear a shout of alarm coming from the bridge.

MC?normal"Mal!" 

->THEWRECK_BRIDGE

=THEWRECK_BRIDGE

* Run towards the sound.

-
You enter the Bridge just in time to see a Sapper (tentacled squid thing) flinging itself across the room in a tangle of inky tenacles.

Sykes?normal ""Duck!" Sykes shouts beside you. 

You miss its serrated stinger  by a hairsbreadth, and the beast rolls straight towards Mal. 

She only has her standard issue diving knife on her and you see a flash of bright metal slicing upwards just as the Sapper buries its stinger in her shoulder. She slumps to the floor.

*Grab your own knife, and prepare to attack.
    It won't be enough, but maybe you can slow it down.
    
*Desperatley look around the room for something to kill it with.
    But there's nothing that will make a difference, and time is of the essence.
-
In the end it doesn't matter, because Jae is suddenly in the doorway and you watch as he flings an old harpooning spear at the beastm impaling it against the far wall. 

It screams and writhes.

* Finish it off with your knife.
* Leave it to die slowly.
-

It's just a youngling, but if it hadn't missed you earlier you'd be just as dead.

You both rush to Mal. 

She's still breathing, somehow. But Sapper poison works fast. You have to get her back to the <i>The Pentecost</i>.

#background.test #wait
->hangarEvent_yellow_day1
