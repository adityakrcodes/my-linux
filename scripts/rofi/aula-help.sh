#!/bin/bash

# This is a rofi help menu for AULA F75 keyboard

HELP_TEXT="Keyboard Help Menu\n\
F1     | Home Page\n\
F2     | Email\n\
F3     | Conversion Window\n\
F4     | Open Explorer\n\
F5     | Brightness-\n\
F6     | Brightness+\n\
F7     | Previous Track\n\
F8     | Play/Pause\n\
F9     | Next Song\n\
F10    | Mute\n\
F11    | Volume-\n\
F12    | Volume+\n\
ESC    | Restore Default\n\
~      | 2.4G Mode\n\
1      | Bluetooth 1\n\
2      | Bluetooth 2\n\
3      | Bluetooth 3\n\
\      | Light Effect Switching\n\
Wheel  | Light Effect Switching\n\
Q      | Android Mode\n\
W      | Windows Mode\n\
E      | Mac Mode\n\
TAB    | Color Switching\n\
↑      | Brightness+\n\
↓      | Brightness-\n\
←      | Speed-\n\
→      | Speed+\n\
WIN-L  | Lock Windows Key\n\
PRTSC  | Screenshot\n\
SCRLK  | Scroll Lock\n\
PAUSE  | Pause\n\
INS    | Insert\n\
END    | Light Effect of Indicator\n\
HOME   | Home\n\
"
echo -e "$HELP_TEXT" | rofi -dmenu -i -p "Keyboard Shortcuts" -width 50

