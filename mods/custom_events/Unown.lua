--Last updated 27/12/2021
--adding words
--set the math random in line 56 to the max of words you added (if there were 5 words and you added 5 then change the random to 1, 10)
--make a sprite called "w(number)" ex: w10
--make the lua sprite in the create function
--set the property visible to true for the word's sprite in the event function
--in the onUpdate function follow the format of the other words
--on the onUpdatePost follow the format and add your word's tag

--If you're curious of how everything works there's a rough explanation at the end
--there may be a better way to do this but this is the best i could do lol


function onCreate()
--variables
TypedLett = 0;

inType = false;

WordAlpha = 1;

Finished = false;
TimerFinish = false;


--make words' sprites
makeLuaSprite('w1', 'unown/w1', 370, 200);
setObjectCamera('w1', 'other');

makeLuaSprite('w2', 'unown/w2', 370, 200);
setObjectCamera('w2', 'other');

makeLuaSprite('w3', 'unown/w3', 300, 200);
setObjectCamera('w3', 'other');

makeLuaSprite('w4', 'unown/w4', 320, 200);
setObjectCamera('w4', 'other');

makeLuaSprite('w5', 'unown/w5', 320, 200);
setObjectCamera('w5', 'other');

makeLuaSprite('w6', 'unown/w6', 320, 200);
setObjectCamera('w6', 'other');

makeLuaSprite('w7', 'unown/w7', 320, 200);
setObjectCamera('w7', 'other');

makeLuaSprite('w8', 'unown/w8', 190, 200);
setObjectCamera('w8', 'other');

makeLuaSprite('w9', 'unown/w9', 320, 200);
setObjectCamera('w9', 'other');

makeLuaSprite('redoverlay', 'unown/redoverlay', 0, 0);
setObjectCamera('redoverlay', 'other');
addLuaSprite('redoverlay', true);
setProperty('redoverlay.visible', false);
setProperty('redoverlay.alpha', 0.3);
scaleLuaSprite('redoverlay', 2, 1);

end

function onEvent(name, value1, value2)
if name == 'Unown' then

TimerFinish = false;
Timer = (value1)
runTimer('typingTime', Timer);

math.randomseed(os.time());

--RANDOM SELECTION OF WORDS
Word = string.format('w%i', math.random(0, 9));
--testing
--debugPrint(Word)

--make the sprites visibles when event is called
setProperty('redoverlay.visible', true);
setProperty('w1.visible', true);
setProperty('w2.visible', true);
setProperty('w3.visible', true);
setProperty('w4.visible', true);
setProperty('w5.visible', true);
setProperty('w6.visible', true);
setProperty('w7.visible', true);
setProperty('w8.visible', true);
setProperty('w9.visible', true);
addLuaSprite(Word, true);


setProperty('boyfriend.stunned', true);
inType = true;
end
end

function onUpdate()

--DIE word
if inType == true and Word == 'w1' and TypedLett == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.D') then
TypedLett = 1
setProperty('w1.alpha', 0);
setProperty('w3.alpha', 0);
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w2.alpha', WordAlpha);

elseif inType == true and Word == 'w1' and TypedLett == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.I') then
TypedLett = 2
setProperty('w1.alpha', 0);
setProperty('w3.alpha', 0);
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w2.alpha', WordAlpha);

elseif inType == true and Word == 'w1' and TypedLett == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.E') then
TypedLett = 3
Finished = true



-- DYING word
elseif inType == true and Word == 'w2' and TypedLett == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.D') then
TypedLett = 1
setProperty('w1.alpha', 0);
setProperty('w3.alpha', 0);
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w2.alpha', WordAlpha);

elseif inType == true and Word == 'w2' and TypedLett == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then
TypedLett = 2
setProperty('w1.alpha', 0);
setProperty('w3.alpha', 0);
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w2.alpha', WordAlpha);

elseif inType == true and Word == 'w2' and TypedLett == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.I') then
TypedLett = 3
setProperty('w1.alpha', 0);
setProperty('w3.alpha', 0);
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w2.alpha', WordAlpha);

elseif inType == true and Word == 'w2' and TypedLett == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.N') then
TypedLett = 4
setProperty('w1.alpha', 0);
setProperty('w3.alpha', 0);
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w2.alpha', WordAlpha);

elseif inType == true and Word == 'w2' and TypedLett == 4 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
TypedLett = 6
Finished = true




-- IM DEAD word
elseif inType == true and Word == 'w3' and TypedLett == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.I') then
TypedLett = 1
setProperty('w1.alpha', 0);
setProperty('w2.alpha', 0);
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w3.alpha', WordAlpha);

elseif inType == true and Word == 'w3' and TypedLett == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.M') then
TypedLett = 2
setProperty('w1.alpha', 0);
setProperty('w2.alpha', 0);
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w3.alpha', WordAlpha);

elseif inType == true and Word == 'w3' and TypedLett == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.D') then
TypedLett = 3
setProperty('w1.alpha', 0);
setProperty('w2.alpha', 0);
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w3.alpha', WordAlpha);

elseif inType == true and Word == 'w3' and TypedLett == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.E') then
TypedLett = 4
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w3.alpha', WordAlpha);

elseif inType == true and Word == 'w3' and TypedLett == 4 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.A') then
TypedLett = 5
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w3.alpha', WordAlpha);

elseif inType == true and Word == 'w3' and TypedLett == 5 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.D') then
TypedLett = 6
Finished = true


--HELP ME word

elseif inType == true and Word == 'w4' and TypedLett == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.H') then
TypedLett = 1
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w4.alpha', WordAlpha);

elseif inType == true and Word == 'w4' and TypedLett == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.E') then
TypedLett = 2
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w4.alpha', WordAlpha);

elseif inType == true and Word == 'w4' and TypedLett == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.L') then
TypedLett = 3
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w4.alpha', WordAlpha);

elseif inType == true and Word == 'w4' and TypedLett == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.P') then
TypedLett = 4
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w4.alpha', WordAlpha);

elseif inType == true and Word == 'w4' and TypedLett == 4 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.M') then
TypedLett = 5
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w4.alpha', WordAlpha);

elseif inType == true and Word == 'w4' and TypedLett == 5 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.E') then
TypedLett = 6
Finished = true


--BRUH word

elseif inType == true and Word == 'w5' and TypedLett == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.B') then
TypedLett = 1
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w5.alpha', WordAlpha);

elseif inType == true and Word == 'w5' and TypedLett == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.R') then
TypedLett = 2
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w5.alpha', WordAlpha);

elseif inType == true and Word == 'w5' and TypedLett == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.U') then
TypedLett = 3
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w5.alpha', WordAlpha);

elseif inType == true and Word == 'w5' and TypedLett == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.H') then
TypedLett = 4
Finished = true


--LEAVE word

elseif inType == true and Word == 'w6' and TypedLett == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.L') then
TypedLett = 1
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w6.alpha', WordAlpha);

elseif inType == true and Word == 'w6' and TypedLett == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.E') then
TypedLett = 2
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w6.alpha', WordAlpha);

elseif inType == true and Word == 'w6' and TypedLett == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.A') then
TypedLett = 3
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w6.alpha', WordAlpha);

elseif inType == true and Word == 'w6' and TypedLett == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.V') then
TypedLett = 4
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w6.alpha', WordAlpha);

elseif inType == true and Word == 'w6' and TypedLett == 4 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.E') then
TypedLett = 5
Finished = true


--GOLD word

elseif inType == true and Word == 'w7' and TypedLett == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
TypedLett = 1
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w7.alpha', WordAlpha);

elseif inType == true and Word == 'w7' and TypedLett == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.O') then
TypedLett = 2
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w7.alpha', WordAlpha);

elseif inType == true and Word == 'w7' and TypedLett == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.L') then
TypedLett = 3
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w7.alpha', WordAlpha);

elseif inType == true and Word == 'w7' and TypedLett == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.D') then
TypedLett = 4
Finished = true


--NOT WANTED word

elseif inType == true and Word == 'w8' and TypedLett == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.N') then
TypedLett = 1
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w7.alpha', WordAlpha);

elseif inType == true and Word == 'w8' and TypedLett == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.O') then
TypedLett = 2
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w7.alpha', WordAlpha);

elseif inType == true and Word == 'w8' and TypedLett == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then
TypedLett = 3
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w7.alpha', WordAlpha);

elseif inType == true and Word == 'w8' and TypedLett == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.W') then
TypedLett = 4
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w7.alpha', WordAlpha);

elseif inType == true and Word == 'w8' and TypedLett == 4 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.A') then
TypedLett = 5
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w7.alpha', WordAlpha);

elseif inType == true and Word == 'w8' and TypedLett == 5 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.N') then
TypedLett = 6
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w7.alpha', WordAlpha);

elseif inType == true and Word == 'w8' and TypedLett == 6 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then
TypedLett = 7
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w7.alpha', WordAlpha);

elseif inType == true and Word == 'w8' and TypedLett == 7 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.E') then
TypedLett = 8
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w7.alpha', WordAlpha);

elseif inType == true and Word == 'w8' and TypedLett == 8 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.D') then
TypedLett = 9
Finished = true

--TAWASI word

elseif inType == true and Word == 'w9' and TypedLett == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then
TypedLett = 1
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w9.alpha', WordAlpha);

elseif inType == true and Word == 'w9' and TypedLett == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.A') then
TypedLett = 2
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w9.alpha', WordAlpha);

elseif inType == true and Word == 'w9' and TypedLett == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.W') then
TypedLett = 3
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w9.alpha', WordAlpha);

elseif inType == true and Word == 'w9' and TypedLett == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.A') then
TypedLett = 4
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w9.alpha', WordAlpha);

elseif inType == true and Word == 'w9' and TypedLett == 4 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.S') then
TypedLett = 5
WordAlpha = (getProperty(WordAlpha) - 0.1)
setProperty('w9.alpha', WordAlpha);

elseif inType == true and Word == 'w9' and TypedLett == 5 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.I') then
TypedLett = 6
Finished = true

--finished writing?
elseif Finished == true then
inType = false;

--reset alpha values so they don't look invisible if they re-appear
setProperty('w1.alpha', 1);
setProperty('w2.alpha', 1);
setProperty('w3.alpha', 1);
setProperty('w4.alpha', 1);
setProperty('w5.alpha', 1);
setProperty('w6.alpha', 1);
setProperty('w7.alpha', 1);
setProperty('w8.alpha', 1);
setProperty('w9.alpha', 1);

setProperty('boyfriend.stunned', false);

--make words and text invisible
setProperty('w1.visible', false);
setProperty('w2.visible', false);
setProperty('w3.visible', false);
setProperty('w4.visible', false);
setProperty('w5.visible', false);
setProperty('w6.visible', false);
setProperty('w7.visible', false);
setProperty('w8.visible', false);
setProperty('w9.visible', false);
setProperty('redoverlay.visible', false);

playSound('BUZZER', 0.8);

TypedLett = 0;
--reset to false so it doesn't loop this code (because it's on update)
Finished = false;
TimerFinish = true;
end
end

function onUpdatePost()

--hide other words from appearing in typing state (on update post because on update doesn't work for some reason)

if Word == 'w1' then
setProperty('w1.alpha', 1);
setProperty('w2.alpha', 0);
setProperty('w3.alpha', 0);
setProperty('w4.alpha', 0);
setProperty('w5.alpha', 0);
setProperty('w6.alpha', 0);
setProperty('w7.alpha', 0);
setProperty('w8.alpha', 0);
setProperty('w9.alpha', 0);

elseif Word == 'w2' then
setProperty('w1.alpha', 0);
setProperty('w2.alpha', 1);
setProperty('w3.alpha', 0);
setProperty('w4.alpha', 0);
setProperty('w5.alpha', 0);
setProperty('w6.alpha', 0);
setProperty('w7.alpha', 0);
setProperty('w8.alpha', 0);
setProperty('w9.alpha', 0);

elseif Word == 'w3' then
setProperty('w1.alpha', 0);
setProperty('w2.alpha', 0);
setProperty('w3.alpha', 1);
setProperty('w4.alpha', 0);
setProperty('w5.alpha', 0);
setProperty('w6.alpha', 0);
setProperty('w7.alpha', 0);
setProperty('w8.alpha', 0);
setProperty('w9.alpha', 0);

elseif Word == 'w4' then
setProperty('w1.alpha', 0);
setProperty('w2.alpha', 0);
setProperty('w3.alpha', 0);
setProperty('w4.alpha', 1);
setProperty('w5.alpha', 0);
setProperty('w6.alpha', 0);
setProperty('w7.alpha', 0);
setProperty('w8.alpha', 0);
setProperty('w9.alpha', 0);

elseif Word == 'w5' then
setProperty('w1.alpha', 0);
setProperty('w2.alpha', 0);
setProperty('w3.alpha', 0);
setProperty('w4.alpha', 0);
setProperty('w5.alpha', 1);
setProperty('w6.alpha', 0);
setProperty('w7.alpha', 0);
setProperty('w8.alpha', 0);
setProperty('w9.alpha', 0);

elseif Word == 'w6' then
setProperty('w1.alpha', 0);
setProperty('w2.alpha', 0);
setProperty('w3.alpha', 0);
setProperty('w4.alpha', 0);
setProperty('w5.alpha', 0);
setProperty('w6.alpha', 1);
setProperty('w7.alpha', 0);
setProperty('w8.alpha', 0);
setProperty('w9.alpha', 0);

elseif Word == 'w7' then
setProperty('w1.alpha', 0);
setProperty('w2.alpha', 0);
setProperty('w3.alpha', 0);
setProperty('w4.alpha', 0);
setProperty('w5.alpha', 0);
setProperty('w6.alpha', 0);
setProperty('w7.alpha', 1);
setProperty('w8.alpha', 0);
setProperty('w9.alpha', 0);

elseif Word == 'w8' then
setProperty('w1.alpha', 0);
setProperty('w2.alpha', 0);
setProperty('w3.alpha', 0);
setProperty('w4.alpha', 0);
setProperty('w5.alpha', 0);
setProperty('w6.alpha', 0);
setProperty('w7.alpha', 0);
setProperty('w8.alpha', 1);
setProperty('w9.alpha', 0);

elseif Word == 'w9' then
setProperty('w1.alpha', 0);
setProperty('w2.alpha', 0);
setProperty('w3.alpha', 0);
setProperty('w4.alpha', 0);
setProperty('w5.alpha', 0);
setProperty('w6.alpha', 0);
setProperty('w7.alpha', 0);
setProperty('w8.alpha', 0);
setProperty('w9.alpha', 1);
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'typingTime' and TimerFinish == false then
setProperty('health', -500);
end
end


--HOW TYPING WORKS (just incase you wanna change the code or something)
--when the event is triggered inType is set to true so it enters the "typing" phase ig
--it checks the randomly selected word from variable "Word", and checks inputs based on that
--TypedLett is the variable that defines which letter you should type next
--for example let's say the word is "DIE" which is "w1"
--if TL(typedLett variable) is at 0, it waits for you to press the first letter which is D
--AFTER you've pressed that it sets TL to 1 meaning you've already inputed D
--then it checks if you've already inputted the first letter by seing if TL is 1, then it waits for you
--to input next letter which is I, and so on.
--when it finishes it sets the variable Finished to true, and then it removes the stun, and everything
--i'm not good at explaining lmao