// To be completed after you have played/read both "about ink" files

Here is an Ink file with many problems. Please fix them and write in a comment how you did so. The comment can be very brief, for instance:
\/\/ This Knot didn't go anywhere, so I added a Divert.  
Ok, on to the challenges. You will need to read the text and discern what the "novice programmer" is trying to do, then fix their code, with comments. 

* This is a choice 
* This is a sub-choice of the first choice 
Some stuff happens if you choose this. 
    * * Here is another sub-choice of that first choice
    Some other stuff happens. 
        * * * And here is a third, with it's own sub-choices. 
            * * * * * sub-sub-choice! 
            * * * * * sub-sub-choice number two!

- Now that you've made your choice, we can continue with the main story. // add a collect here to always get to the story

// Error: no diversion to the main story
-> the_main_story

// Syntax Error: unexpected whitespace
=== the_main_story ===

Once upon a time, there was a dog. That dog wanted to learn to fly. You see, it really liked crepes. But only in Paris. 

You can undestand it's conundrum. 

* Tell me more about the dog 
    -> about_the_dog 

- I'll happily tell you more about the dog! 
    -> about_the_dog  // missing divert
    

=== about_the_dog ===

The thing is, you are the dog. You have options. What do you do?

* [Walk the 20 miles to the airport and bark at somebody near a plane.] 
    -> bark_at_somebody 
* [ Use your paws to ask ChatGPT "What should a dog do to learn to fly?" ]
    -> ask_chat_GPT  // Error: divert target doesn't exist
* You learn to enjoy dog food. 
    -> dog_food  // you shouldn't bracket "to enjoy"


=== the_airport ===

    // Error: empty divert target. Also is never referenced
    Alright, we made it to the airport. What should I do now?
    * [Bark at somebody]
    -> bark_at_somebody
    
    * [Just get into an empty cockpit and wing it]
    -> just_get_into_an_open_cockpit_and_wing_it
    
=== bark_at_somebody === // syntax error: need to surround target by "==="
    You go to the airport and bark at a man wearing a bright vest. 
//  no divert target, loose end
    -> catastrophe

=== ask_chat_GPT ===  // New path created by me

    "Flying a plane involves understanding the principles of flight, completing pre-flight checks, and following a structured process for takeoff, cruising, and landing. Start by inspecting the aircraft, checking weather conditions, and planning your route. After starting the engine and communicating with air traffic control (ATC), taxi to the runway, and increase throttle for takeoff, lifting off at the proper speed. During flight, maintain altitude, monitor instruments, and navigate using charts and ATC guidance. For landing, reduce altitude gradually, align with the runway, and touch down smoothly, following ATC instructions. Proper training and licensing are essential for safe operation."

    OKAYYYYYYYYYYYYYYYYYYYYYYYY nobody has time to read all of that. Let's just go to the airport.
    -> the_airport
    
=== just_get_into_an_open_cockpit_and_wing_it === // syntax error, need "===" on either side
    You get into an open cockpit and "wing" it. 
    -> catastrophe 

=== catastrophe ===  // syntax error, need "===" instead of "="

    Oh no! They found you. You get a pet and your human comes pick you up. You must learn to love dog_food, I guess. 

-> dog_food  // syntax error, should be "-> dog_food"

=== dog_food ===

    Really this was the only rational answer. The end.
    // missing -> END
    -> END