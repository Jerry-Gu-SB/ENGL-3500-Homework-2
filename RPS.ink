~ SEED_RANDOM(42)
NEW YORK, 4:12 AM
You waiting for the subway on a fringe stop.
The subway station is empty.

-> intro

== intro ==
A strange man comes up to me in a subway after work.
"Hello! Let's play a game of Rock, Papers, Scissors to pass the time.
    Oh, and whoever loses will jump onto those tracks over there. Shall we begin?"
* "Let's play!"
    "Wonderful! I love your enthusiasm!" 
    -> RPS
* "Just who the hell are you?"
    "Why, I'm just a man who loves to play games! Let's play shall we?" 
    -> resist_or_give_up
* "..."
    "Speechless are we? Well, I take that as a yes!" 
    -> speechless
    
== speechless ==
You see a gun holster peeking out from his waist.
+ [Go along with his game]
    "Fine, I'll play." 
    -> RPS
+ [Reconsider your options] 
    ->resists_or_give_up_2
    
== resist_or_give_up ==
+ "Hell no, I'm not playing your sick, twisted game. Get the hell away from me."
    He smoothly points a gun against my head, his hand showing no hint of hesitation or fear.
    "I'm afraid I must insist." 
    -> resists_or_give_up_2 
+ "Alright fine, I'll play."
    "Great!" Exclaims the strange man. "Let's play!"
    -> RPS
    
== resists_or_give_up_2 ==
+ "Jesus Christ, fine, I'll play." 
    -> RPS
    
+ [Try to stand up as quickly as possible.]
    He shoots you the instant you move, Han Solo style. 
    -> END

== RPS ==
VAR rps_count = 0
~ rps_count = rps_count + 1
VAR man_move = 0
~ man_move = RANDOM(1,3) // # 1 == rock, 2 == paper, 3 == scissors

"Rock,"
"Paper,"
"Scissors!"

+ Throw Rock
    { man_move:
    - 1: The strange man's fist doesn't move an inch, and holds still just above his elbow height. He's thrown rock as well.
        -> RPS_TIE
    
    - 2: The strange man holds an open palm, showing paper.
        -> RPS_LOSS
    
    - 3: The strange man's index and middle finger shoot out, showing scissors.
        -> RPS_WIN
    }
+ Throw Paper
    { man_move:
    - 1: The strange man's fist doesn't move an inch, and holds still just above his elbow height. He's thrown rock.
        -> RPS_WIN
    
    - 2: The strange man holds an open palm, showing paper as well.
        -> RPS_TIE
    
    - 3: The strange man's index and middle finger shoot out, showing scissors.
        He uses his scissors to give your hand a little slice between his index and middle finger.
        -> RPS_LOSS
    }
+ Throw Scissors
    { man_move:
    - 1: The strange man's fist doesn't move an inch, and holds still just above his elbow height. He's thrown rock.
        -> RPS_LOSS
    
    - 2: The strange man holds an open palm almost like a knife, showing paper.
        -> RPS_WIN
    
    - 3: The strange man's index and middle finger shoot out, showing scissors.
        -> RPS_TIE
    }

== RPS_LOSS ==
    A smile creeps across his face.
    "Too bad for you! I guess it's time for you to pay the price!
    
+ "Can I play again please?" 
    "Why of course, 
    
    {rps_count > 1:
        you've lost { rps_count } times already, but I'll give you one more chance.
    - else:
        that was but one game, let's see who can win the next!"
    }
    -> speechless

+ "Fair enough, do your worst."
    
    { speechless or resist_or_give_up: 
        He pulls the trigger, and a miniature bouquet of flowers pops out of the pistol.
    }
    "Haha, I'm just kidding, you didn't need to do all of that!
    Thank you for playing, what a fun game, with fun stakes!
    "I hope you enjoyed, bye bye now~~"
    He stands up as the train approaches, and jumps off the platform, only to disappear.
    You resolve to yourself to get enough sleep tonight.
    -> END

== RPS_TIE ==
    "It's a tie!"
    The man is clearly delighted at the sight.
    "Wonderful! Shall we play again?"
    -> resists_or_give_up_2
    
== RPS_WIN
    You feel a strange sense of relief wash over you.
    "You won, great job!"
    The strange man stands up as the train arrives.
    { rps_count > 1:
        "It may have taken {rps_count} times, but fair's fair. I'll be going now!"
    }
    You begin standing up to stop him, but it's too late.
    The man jumps off the platform and disappears into thin air, no sign of his locamotive demise in sight.
    "Tata~~~"
    You resolve yourself to get a coffee and a good night's sleep tonight.
    -> END
