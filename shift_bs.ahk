; Autohotkey

Capslock::Ctrl
; Ctrl::Capslock

; Execute these commands for mintty.

; A debugging hotkey.
!/::
WinGetClass, class, A
MsgBox, debug:@%class%@
return

;------------------------------------------------------------------------------
; putty, mintty
;------------------------------------------------------------------------------
#If WinActive("ahk_class PuTTY") or WinActive("ahk_class mintty")

;SetStoreCapslockMode, off
;
;^Tab::Send {Ctrl down}{F13}
;+^Tab::Send {Ctrl down}{LShift Down}{F14}
;
;+^T::Send {Ctrl down}{LShift Down}{F16}
;
;; Shift-Backspace should just be backspace>
;+BS::Send {BS}
;^+BS::Send {BS}

; Ctrl-Backspace should be F17
; Alex Guo: I don't think vim8 on windows can interpret F* keys greater than
; 12.
;^BS::Send {Ctrl down}{F17}
^BS::Send {Ctrl down}{F5}

;; Ctrl-Enter, Ctrl-Shift-Enter, and "Shift-Enter" should be like a normal enter
;^+Enter::Send {Enter}
;+Enter::Send {Enter}
;^Enter::Send {Enter}
;
;; Ctrl-Shift-P should send a special key.
;^+P::Send {F18}
;; ^+P::MsgBox, wtf

#IfWinActive
