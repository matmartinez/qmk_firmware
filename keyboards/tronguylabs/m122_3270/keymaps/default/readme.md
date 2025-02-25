# Default keymap for m122-3270

This keymap is intended to make the PC/3270 122-key IBM keyboard work as closely as possible to the standard
PC/3270 keyboard's original mapping. Two layers are defined: layer 0 is the PC layout, using the blue legends
on the PC/3270 keys (as shipped by Unicomp; I don't have the original keycaps, and I know there are a few
differences), while layer 1 is the 3270 layout, with keycodes selected to make the x3270 suite do the right
thing with each key as pressed. The idea here is, eventually, to get x3270 and friends to automatically
shift the keyboard to layer 1 when they gain focus.

When layer 0 is active, the PA1 key is Escape, the Reset and Enter keys are Control, and the comma and dot keys
act like normal PC keys (< and >, repectively, when shifted). The Ctrl key (bottom right of the left-side 10-key
cluster) is always the left GUI key. PA2 and Jump/PA3 are PgUp and PgDn, respectively, and the backtab key is
End. The Rule/Home key is Home.

When layer 1 is active, the keys do their labeled functions. The only keys that don't do anything are CrSel,
ExSel, and Jump, though only a few of the alternate functions (on the front of the keys) work: left/right/delete
word and PA3. The rest aren't emulated by x3270. Many of the keys that have function in PC mode will *not* have
that same function in 3270 mode, since x3270 uses different keystrokes to accomplish the same function.

To manually switch to layer 1, hold the Zoom key (the one on the far lower left of the keyboard) and press Clear
(the one at the top right of that same block of 10 keys); to switch back to layer 0, hold the Zoom key and hit
Attn (the one at the top left of that block of 10). Holding the Zoom key and the spacebar gets you to keys that
control QMK itself: Zoom-space-R resets to the bootloader, Zoom-space-E erases the EEPROM (which currently does
nothing), and Zoom-space-D turns the debugger on and off.
