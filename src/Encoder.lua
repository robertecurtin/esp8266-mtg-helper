return function(pins)
  gpio.mode(pins.press, gpio.INPUT, gpio.PULLUP)
  return {
    onPress = function (f)
      onPressCallback = gpio.trig(pins.press, 'down', f)
    end
  }
end
