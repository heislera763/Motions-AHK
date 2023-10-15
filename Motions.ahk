#Requires AutoHotkey v2.0

; Block Right Alt (AltGr) from its original function
RAlt::return

; Function to send keys based on Shift being held
SendKey(key) {
    if (GetKeyState("Shift", "P")) {
        Send("+{" key "}")
    } else {
        Send("{" key "}")
    }
}

; Function to send Tab or Shift+Tab based on Shift being held
SendTab() {
    if (GetKeyState("Shift", "P")) {
        Send("+{Tab}")
    } else {
        Send("{Tab}")
    }
}

; Right Alt (AltGr) as Meta
RAlt & f::SendKey("Left")
RAlt & j::SendKey("Right")
RAlt & s::SendKey("Home")
RAlt & l::SendKey("End")
RAlt & r::SendKey("Up")
RAlt & v::SendKey("Down")
RAlt & u::SendKey("PgUp")
RAlt & m::SendKey("PgDn")
RAlt & d::Send("{Ctrl down}{Left}{Ctrl up}")
RAlt & k::Send("{Ctrl down}{Right}{Ctrl up}")

; Allow Meta + Enter
RAlt & Enter::Send("{Enter}")

; Allow Meta + Tab or Meta + Shift + Tab
RAlt & Tab::SendTab()
