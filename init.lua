local Display = require 'src/Display'
local Encoder= require 'src/Encoder'
local pinMap = require 'src/pinMap'

local display = Display(pinMap.displayPins);
local encoder1 = Encoder(pinMap.encoder1);
local encoder2 = Encoder(pinMap.encoder2);

encoder1.onPress(function ()
  display.print('Tee hee, that tickles!', 'line1');
end)

encoder2.onPress(function ()
  display.print('Hey, cut it out!', 'line2');
end)
