local function initializeI2c(id, displayPins)
  local sda = displayPins.sda
  local scl = displayPins.sdl

  i2c.setup(id, sda, scl, i2c.FAST)
end

local function initializeDisplay(id)
  local sla = 0x3c
  local disp = u8g2.ssd1306_i2c_128x32_univision(id, sla)

  disp:setFont(u8g2.font_6x10_tf)
  disp:setFontRefHeightExtendedText()
  disp:setDrawColor(1)
  disp:setFontPosTop()
  disp:setFontDirection(0)

  return disp
end

local lineMap = {
  line1 = 0,
  line2 = 20
}

local function draw(disp, value)
  local x = 0
  local y = lineMap[value.lineId]
  print(x, y, value.text, value.lineId)
  disp:drawStr(x, y, value.text)
end

return function(displayPins)
  local textBuffer = {}
  local id = 0

  initializeI2c(id, displayPins)
  local disp = initializeDisplay(id)

  tmr.create():alarm(500, tmr.ALARM_AUTO, function()
    disp:clearBuffer()

    for _, value in ipairs(textBuffer) do
      draw(disp, value)
    end

    disp:sendBuffer()
  end)

  return {
    print = function(text, lineId)
      table.insert(textBuffer, {text = text, lineId = lineId})
    end,
    clear = function () textBuffer = {} end
  }
end
