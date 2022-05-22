local Display = require 'src/Display'
local Encoder= require 'src/Encoder'
local pinMap = require 'src/pinMap'

local display = Display(pinMap.displayPins);
local encoder = Encoder(pinMap.encoder1);

encoder.onPress(function ()
  display.print("Tee hee, that tickles!", 'line1');
end)

display.print("I am not here!", 'line1');

display.clear()

display.print("I have purpose!", 'line2');
