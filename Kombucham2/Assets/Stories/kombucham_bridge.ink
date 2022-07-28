// Bridge events

==bridgeevent_yellow_day0

Admiral Alvaro is waiting for you at the Helm console when you arrive. 

Kaori?normal ""Hey, we'll get through this together." Kaori whispers. "I'm right here by your side."

Sykes?normal ""As am I."

Before now you've only ever glimpsed the Admiral from a distance, but up close you can see the old diving implants woven into his skin. Traceries of bioluminescent circuitry cut across his cheeks, and artificial lenses make his eyes glow like distant moons as he turns to watch you approach.

MC?normal ""Admiral." You give him your sharpest salute. It's an outmoded form of greeting from the old days, but under the circumstances it seems fitting.

Kaori doesn't bother with the formalities, just casts her eyes around the room with an air of bored indifference.

And Sykes, well, that's a whole other can of worms. You do your best to ignore him as he peers over the shoulders of the Planesmen who are plugged into the navigation station next to you.

The Admiral meets your gaze with a kind of tired curiosity. He looks like a man at the end of his tether. 

Alvaro?normal ""Ah, the Ranger team from the Arcturus. Report." The Admiral tells you, punctuating the command with a weary wave of his hand.

* Tell him everything.
You explain the events as best you can. Recounting your findings from the <i>Arcturus</i> - the religious shrine, the ichor processing plant, the charts documenting various dives nearby alien ruins, and finally the attack itself and Jae's injury.

The Admiral takes you aside after the briefing, and tells you to keep the orb under wraps. Take it to the Lab, there's someone there who will help. 

* Stick to the necessary details.
If they want to conceal information from you, then you see no need to overshare. You recount the events aboard the <i>Arcturus</i> in the most spartan terms.

-The Admiral seems surprised by none of it. 

Alvaro?normal ""Yes, I heard the unfortunate news about your team-mate, but the physician reports he will likely make a full recovery."

Kaori?normal ""That's a relief."

*Agree with her.
There's more you could say of course, but if Rilke wouldn't give you more information then the Admiral certainly won't.

MC?normal ""Given how little we had to go on, we're lucky it wasn't worse."

The Admiral brushed off your small dig with a wave of his hand.

Alvaro?normal ""I'm sure you have questions."

*Speak up.
MC?normal ""That's wonderful news. But all of this might have been prevented if the Admiralty had been honest with us from the start. What were we looking for down there?"

The Admiral seems surprised by your boldness, though the expression is quickly hidden behind a frown. 

Alvaro?normal ""I'm afraid explanations are a luxury neither of us can afford at this stage. But..." He pauses, considering. "It's right of you to ask."


-

Alvaro?normal ""You deserve our candour, and our trust. Perhaps soon I will be able to explain. But now isn't the time."

Alvaro?normal ""Thank you for the report Rangers. Please show yourselves out." He says, and exits the room before you can say anything further.

It isn't until he's gone that you realise you forgot to mention the Cube. It's still there in your pocket, a small comforting weight.

Perhaps it's for the best. This way you can investigate the device on your own. Perhaps you will even find out what is being kept from you, and why.

*Speak to Kaori.
Kaori?normal ""So, do you want to tell me what was going on back there?"
You show here the cube, explain what you found, and your nascent theories about the <i>Arcturus</i>
She regards you silently for a few moments, then nods.
Kaori?normal ""I guess I'm on board with that. It's easy for them to say all of this is "need to know", but they aren't the ones out there putting their lives on the line."
Kaori?normal ""You should pay a visit in the lab once he's recovered. He's into all this Antecendant stuff, might have some bright ideas of how you can find out more."
Kaori?normal ""But in the meantime you should take those ichor samples to Engineering. I'll be able to analyse it further there."

-*Leave.
{SetNextRoomEvent(Laboratory, 2, ->laboratoryevent_green_day0)}
{SetNextRoomEvent(EngineRoom, 2, ->engineRoomEvent_yellow_day0)}
{NullRoomEvent(Bridge)} 
->returnToMap


