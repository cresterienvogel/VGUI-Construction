# VGUI-Construction
Table-like system to easily draw VGUI

# Main Params
* Name - to use later with c_Child, but you will be still able to use number even without it (string)
* VGUI - VGUI to create: DButton, DFrame .. (string)
* Children - Children elements to add (tbl)

# DHTML Params
* HTML - HTML code to set (string)

# DFrame Params
* Title (string)
* OnClose (function)
* SetSizable (bool)
* MakePopup
* ShowCloseButton (bool)
* SetDraggable (bool)

# DButton, DLabel .. Params
* Text (string)
* Color (color tbl)
* Font (string)

# Global Params
* Dock (tbl)
* DockMargin (tbl)
* DockPadding (tbl)
* Wide (number)
* Tall (number)
* Alignment (number)
* SetMouseInputEnabled (bool)
* SetKeyboardInputEnabled (bool)
* Center (bool)
* Paint (function)
* OnRemove (function)
