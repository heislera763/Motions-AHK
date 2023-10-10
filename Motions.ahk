#Requires AutoHotkey v2.0

; Block Right Alt (AltGr) from its original function
RAlt::return

; Right Alt (AltGr) as Meta
RAlt & f::Send("{Left}")         ; Meta-f for left arrow
RAlt & j::Send("{Right}")        ; Meta-j for right arrow
RAlt & s::Send("{Home}")         ; Meta-s for start of line
RAlt & l::Send("{End}")          ; Meta-l for end of line
RAlt & r::Send("{Up}")           ; Meta-r for up arrow
RAlt & v::Send("{Down}")         ; Meta-v for down arrow
RAlt & u::Send("{PgUp}")         ; Meta-u for page up
RAlt & m::Send("{PgDn}")         ; Meta-m for page down
RAlt & d::Send("{Ctrl down}{Left}{Ctrl up}") ; Meta-d for beginning of previous word
RAlt & k::Send("{Ctrl down}{Right}{Ctrl up}") ; Meta-k for beginning of next word