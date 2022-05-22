### ESP8266-mtg-helper

Project with Troy to make a physical life tracker for Magic: The Gathering

### Parts list
- SSD1306 128x32 pixel display
- Rotary Encoder x2
- ICR10440 3.7V 350mAh Lithium Ion Rechargeable Battery
- TP4056 li-on battery charger
- AAA battery housing
- 3d printed case (wip)

#### Board pinout
Pin|Function|Component
--|--|--
1|SDL|display
2|SDA|display
5|Out A|encoder 1
6|Out B|encoder 1
sd2 (gpio9)|press|encoder 1
8|Out A|encoder 2
7|Out B|encoder 2
sd3 (gpio10)|press|encoder 2

### Usage
- Install [espeon](https://github.com/ryanplusplus/espeon) to transfer files.
- run `espeon flash` to flash `firmware.bin` and then `espeon upload` to upload the lua files
- `espeon run` is helpful for debugging, it uploads and attaches so you can view print statements
  - `ctrl-a` -> `k` -> `y` exits console

