local Display = require 'src/Display'
local pinMap = require 'src/pinMap'

local display = Display(pinMap.displayPins);

display.print("I am not here!", 'line1');

display.clear()

display.print("I have purpose!", 'line2');
