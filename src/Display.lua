return function()
  local id = 0
  local sda = 2
  local scl = 1
  local sla = 0x3c
  i2c.setup(id, sda, scl, i2c.FAST)
  local disp = u8g2.ssd1306_i2c_128x32_univision(id, sla)

  disp:setFont(u8g2.font_6x10_tf)
  disp:setFontRefHeightExtendedText()
  disp:setDrawColor(1)
  disp:setFontPosTop()
  disp:setFontDirection(0)


  return function(text)
    disp:clearBuffer()
    disp:drawStr(0, 0, text)
    disp:sendBuffer()
  end
end
