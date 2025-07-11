﻿; Generated by KLFC 1.5.7
; https://github.com/39aldo39/klfc

#MaxHotkeysPerInterval 200
#MaxThreadsPerHotkey 10

SendUps(ByRef modifiers) {
  for index, modifier in modifiers {
    if (modifier == "Caps")
      SetCapsLockState, off
    else if (modifier == "Num")
      SetNumLockState, off
    else if InStr(modifier, "Extend")
      %modifier% := false
    else
      Send {%modifier% Up}
  }
  modifiers := Object()
}

SendAsUnicode(string) {
  Result := ""
  Loop, Parse, string
    Result .= Format("{{}U+{:04x}{}}", Ord(A_LoopField))
  Send {Blind}%Result%
}

DeadKeys := ComObjCreate("Scripting.Dictionary")

DeadKey(baseChar, table, name := "") {
  Global ActiveDeadKey
  if (ActiveDeadKey != "") {
    NewActiveDeadKey := ComObjCreate("Scripting.Dictionary")
    for key in table {
      value := table.item(key)
      NewActiveDeadKey.item(key) := ActiveDeadKey.item(value)
    }
    result := ActiveDeadKey.item(name)
    if (IsObject(result)) {
      for key in result {
        value := result.item(key)
        NewActiveDeadKey.item(key) := value
      }
    } else if (result != "") {
      ActiveDeadKey := ""
      SendAsUnicode(result)
      Return
    }
    ActiveDeadKey := NewActiveDeadKey
    Return
  }
  ActiveDeadKey := table
  Input key, L1, {Esc}{F1}{F2}{F3}{F4}{F5}{F6}{F7}{F8}{F9}{F10}{F11}{F12}{Left}{Right}{Up}{Down}{Home}{End}{PgUp}{PgDn}{Del}{Ins}{BS}{PrintScreen}{Pause}{AppsKey}
  If InStr(ErrorLevel, "EndKey:") {
    ActiveDeadKey := ""
    value := SubStr(ErrorLevel, 8)
    Send {Blind}{%value%}
    SendAsUnicode(baseChar)
  } else if (ErrorLevel != "NewInput") {
    value := ActiveDeadKey.item(key)
    ActiveDeadKey := ""
    if (IsObject(value)) {
      DeadKey(baseChar, value)
    } else if (value != "") {
      SendAsUnicode(value)
    } else {
      SendAsUnicode(baseChar . key)
    }
  }
}

*SC029::Send {Blind}{VKc0SC029 DownR} ; QWERTY ~: ~
*SC029 up::Send {Blind}{VKc0SC029 Up}
*SC002::Send {Blind}{VK31SC002 DownR} ; QWERTY 1: 1
*SC002 up::Send {Blind}{VK31SC002 Up}
*SC003::Send {Blind}{VK32SC003 DownR} ; QWERTY 2: 2
*SC003 up::Send {Blind}{VK32SC003 Up}
*SC004::Send {Blind}{VK33SC004 DownR} ; QWERTY 3: 3
*SC004 up::Send {Blind}{VK33SC004 Up}
*SC005::Send {Blind}{VK34SC005 DownR} ; QWERTY 4: 4
*SC005 up::Send {Blind}{VK34SC005 Up}
*SC006::Send {Blind}{VK35SC006 DownR} ; QWERTY 5: 5
*SC006 up::Send {Blind}{VK35SC006 Up}
*SC007::Send {Blind}{VK36SC007 DownR} ; QWERTY 6: 6
*SC007 up::Send {Blind}{VK36SC007 Up}
*SC008::Send {Blind}{VK37SC008 DownR} ; QWERTY 7: 7
*SC008 up::Send {Blind}{VK37SC008 Up}
*SC009::Send {Blind}{VK38SC009 DownR} ; QWERTY 8: 8
*SC009 up::Send {Blind}{VK38SC009 Up}
*SC00a::Send {Blind}{VK39SC00a DownR} ; QWERTY 9: 9
*SC00a up::Send {Blind}{VK39SC00a Up}
*SC00b::Send {Blind}{VK30SC00b DownR} ; QWERTY 0: 0
*SC00b up::Send {Blind}{VK30SC00b Up}
*SC00c::Send {Blind}{VKbdSC00c DownR} ; QWERTY -: -
*SC00c up::Send {Blind}{VKbdSC00c Up}
*SC00d::Send {Blind}{VKbbSC00d DownR} ; QWERTY +: +
*SC00d up::Send {Blind}{VKbbSC00d Up}
*SC010::Send {Blind}{VK51SC010 DownR} ; QWERTY Q: Q
*SC010 up::Send {Blind}{VK51SC010 Up}
*SC011::Send {Blind}{VK57SC011 DownR} ; QWERTY W: W
*SC011 up::Send {Blind}{VK57SC011 Up}
*SC012::Send {Blind}{VK45SC012 DownR} ; QWERTY E: E
*SC012 up::Send {Blind}{VK45SC012 Up}
*SC013::Send {Blind}{VK52SC013 DownR} ; QWERTY R: R
*SC013 up::Send {Blind}{VK52SC013 Up}
*SC014::Send {Blind}{VK54SC014 DownR} ; QWERTY T: T
*SC014 up::Send {Blind}{VK54SC014 Up}
*SC015::Send {Blind}{VK59SC015 DownR} ; QWERTY Y: Y
*SC015 up::Send {Blind}{VK59SC015 Up}
*SC016::Send {Blind}{VK55SC016 DownR} ; QWERTY U: U
*SC016 up::Send {Blind}{VK55SC016 Up}
*SC017::Send {Blind}{VK49SC017 DownR} ; QWERTY I: I
*SC017 up::Send {Blind}{VK49SC017 Up}
*SC018::Send {Blind}{VK4fSC018 DownR} ; QWERTY O: O
*SC018 up::Send {Blind}{VK4fSC018 Up}
*SC019::Send {Blind}{VK50SC019 DownR} ; QWERTY P: P
*SC019 up::Send {Blind}{VK50SC019 Up}
*SC01a::Send {Blind}{VKdbSC01a DownR} ; QWERTY [: [
*SC01a up::Send {Blind}{VKdbSC01a Up}
*SC01b::Send {Blind}{VKddSC01b DownR} ; QWERTY ]: ]
*SC01b up::Send {Blind}{VKddSC01b Up}
*SC01e::Send {Blind}{VK41SC01e DownR} ; QWERTY A: A
*SC01e up::Send {Blind}{VK41SC01e Up}
*SC01f::Send {Blind}{VK53SC01f DownR} ; QWERTY S: S
*SC01f up::Send {Blind}{VK53SC01f Up}
*SC020::Send {Blind}{VK44SC020 DownR} ; QWERTY D: D
*SC020 up::Send {Blind}{VK44SC020 Up}
*SC021::Send {Blind}{VK46SC021 DownR} ; QWERTY F: F
*SC021 up::Send {Blind}{VK46SC021 Up}
*SC022::Send {Blind}{VK47SC022 DownR} ; QWERTY G: G
*SC022 up::Send {Blind}{VK47SC022 Up}
*SC023::Send {Blind}{VK48SC023 DownR} ; QWERTY H: H
*SC023 up::Send {Blind}{VK48SC023 Up}
*SC024::Send {Blind}{VK4aSC024 DownR} ; QWERTY J: J
*SC024 up::Send {Blind}{VK4aSC024 Up}
*SC025::Send {Blind}{VK4bSC025 DownR} ; QWERTY K: K
*SC025 up::Send {Blind}{VK4bSC025 Up}
*SC026::Send {Blind}{VK4cSC026 DownR} ; QWERTY L: L
*SC026 up::Send {Blind}{VK4cSC026 Up}
*SC027::Send {Blind}{VKbaSC027 DownR} ; QWERTY ;: ;
*SC027 up::Send {Blind}{VKbaSC027 Up}
*SC028::Send {Blind}{VKdeSC028 DownR} ; QWERTY ': '
*SC028 up::Send {Blind}{VKdeSC028 Up}
*SC02b::Send {Blind}{VKdcSC02b DownR} ; QWERTY \: \
*SC02b up::Send {Blind}{VKdcSC02b Up}
*SC056::Send {Blind}{VKe2SC056 DownR} ; QWERTY Iso: Iso
*SC056 up::Send {Blind}{VKe2SC056 Up}
*SC02c::Send {Blind}{VK5aSC02c DownR} ; QWERTY Z: Z
*SC02c up::Send {Blind}{VK5aSC02c Up}
*SC02d::Send {Blind}{VK58SC02d DownR} ; QWERTY X: X
*SC02d up::Send {Blind}{VK58SC02d Up}
*SC02e::Send {Blind}{VK43SC02e DownR} ; QWERTY C: C
*SC02e up::Send {Blind}{VK43SC02e Up}
*SC02f::Send {Blind}{VK56SC02f DownR} ; QWERTY V: V
*SC02f up::Send {Blind}{VK56SC02f Up}
*SC030::Send {Blind}{VK42SC030 DownR} ; QWERTY B: B
*SC030 up::Send {Blind}{VK42SC030 Up}
*SC031::Send {Blind}{VK4eSC031 DownR} ; QWERTY N: N
*SC031 up::Send {Blind}{VK4eSC031 Up}
*SC032::Send {Blind}{VK4dSC032 DownR} ; QWERTY M: M
*SC032 up::Send {Blind}{VK4dSC032 Up}
*SC033::Send {Blind}{VKbcSC033 DownR} ; QWERTY ,: ,
*SC033 up::Send {Blind}{VKbcSC033 Up}
*SC034::Send {Blind}{VKbeSC034 DownR} ; QWERTY .: .
*SC034 up::Send {Blind}{VKbeSC034 Up}
*SC035::Send {Blind}{VKbfSC035 DownR} ; QWERTY /: /
*SC035 up::Send {Blind}{VKbfSC035 Up}
*SC039::Send {Blind}{VK20SC039 DownR} ; QWERTY Space: Space
*SC039 up::Send {Blind}{VK20SC039 Up}

; QWERTY ~
#if
SC029::
; grave
if (DeadKeys.item("grave") == "") {
  DeadKeys.item("grave") := ComObjCreate("Scripting.Dictionary")
  DeadKeys.item("grave").item("3") := "ȇ"
  DeadKeys.item("grave").item("4") := "ȓ"
  DeadKeys.item("grave").item("7") := "ȗ"
  DeadKeys.item("grave").item("8") := "ȋ"
  DeadKeys.item("grave").item("9") := "ȏ"
  DeadKeys.item("grave").item("q") := "ȃ"
  DeadKeys.item("grave").item("w") := "ẁ"
  DeadKeys.item("grave").item("e") := "è"
  DeadKeys.item("grave").item("y") := "ỳ"
  DeadKeys.item("grave").item("u") := "ù"
  DeadKeys.item("grave").item("i") := "ì"
  DeadKeys.item("grave").item("o") := "ò"
  DeadKeys.item("grave").item("a") := "à"
  DeadKeys.item("grave").item("d") := "ĕ"
  DeadKeys.item("grave").item("j") := "ŭ"
  DeadKeys.item("grave").item("k") := "ĭ"
  DeadKeys.item("grave").item("l") := "ŏ"
  DeadKeys.item("grave").item("z") := "ă"
  DeadKeys.item("grave").item("b") := "ğ"
  DeadKeys.item("grave").item("n") := "ǹ"
  DeadKeys.item("grave").item("#") := "Ȇ"
  DeadKeys.item("grave").item("$") := "Ȓ"
  DeadKeys.item("grave").item("&") := "Ȗ"
  DeadKeys.item("grave").item("*") := "Ȋ"
  DeadKeys.item("grave").item("(") := "Ȏ"
  DeadKeys.item("grave").item("Q") := "Ȃ"
  DeadKeys.item("grave").item("W") := "Ẁ"
  DeadKeys.item("grave").item("E") := "È"
  DeadKeys.item("grave").item("Y") := "Ỳ"
  DeadKeys.item("grave").item("U") := "Ù"
  DeadKeys.item("grave").item("I") := "Ì"
  DeadKeys.item("grave").item("O") := "Ò"
  DeadKeys.item("grave").item("A") := "À"
  DeadKeys.item("grave").item("D") := "Ĕ"
  DeadKeys.item("grave").item("J") := "Ŭ"
  DeadKeys.item("grave").item("K") := "Ĭ"
  DeadKeys.item("grave").item("L") := "Ŏ"
  DeadKeys.item("grave").item("Z") := "Ă"
  DeadKeys.item("grave").item("B") := "Ğ"
  DeadKeys.item("grave").item("N") := "Ǹ"
  DeadKeys.item("grave").item(" ") := "``"
}
DeadKey("``", DeadKeys.item("grave"), "grave")
Return
+SC029::
; tilde
if (DeadKeys.item("tilde") == "") {
  DeadKeys.item("tilde") := ComObjCreate("Scripting.Dictionary")
  DeadKeys.item("tilde").item("=") := "≈"
  DeadKeys.item("tilde").item("e") := "ẽ"
  DeadKeys.item("tilde").item("y") := "ỹ"
  DeadKeys.item("tilde").item("u") := "ũ"
  DeadKeys.item("tilde").item("i") := "ĩ"
  DeadKeys.item("tilde").item("o") := "õ"
  DeadKeys.item("tilde").item("a") := "ã"
  DeadKeys.item("tilde").item("v") := "ṽ"
  DeadKeys.item("tilde").item("n") := "ñ"
  DeadKeys.item("tilde").item("E") := "Ẽ"
  DeadKeys.item("tilde").item("Y") := "Ỹ"
  DeadKeys.item("tilde").item("U") := "Ũ"
  DeadKeys.item("tilde").item("I") := "Ĩ"
  DeadKeys.item("tilde").item("O") := "Õ"
  DeadKeys.item("tilde").item("A") := "Ã"
  DeadKeys.item("tilde").item("V") := "Ṽ"
  DeadKeys.item("tilde").item("N") := "Ñ"
  DeadKeys.item("tilde").item("<") := "≲"
  DeadKeys.item("tilde").item(">") := "≳"
  DeadKeys.item("tilde").item(" ") := "~"
}
DeadKey("~", DeadKeys.item("tilde"), "tilde")
Return
>!<^SC029::Send {Blind}{U+00ba} ; º
+>!<^SC029::Send {Blind}{U+00aa} ; ª

; QWERTY 1
#if
SC002::Send {Blind}{U+0031} ; 1
+SC002::Send {Blind}{U+0021} ; !
>!<^SC002::Send {Blind}{U+00b7} ; ·
+>!<^SC002::Send {Blind}{U+00a1} ; ¡

; QWERTY 2
#if
SC003::Send {Blind}{U+0032} ; 2
+SC003::Send {Blind}{U+0040} ; @
>!<^SC003::Send {Blind}{U+00b2} ; ²
+>!<^SC003::Send {Blind}{U+2082} ; ₂

; QWERTY 3
#if
SC004::Send {Blind}{U+0033} ; 3
+SC004::Send {Blind}{U+0023} ; #
>!<^SC004::Send {Blind}{U+00a3} ; £
+>!<^SC004::Send {Blind}{U+00a5} ; ¥

; QWERTY 4
#if
SC005::Send {Blind}{U+0034} ; 4
+SC005::Send {Blind}{U+0024} ; $
>!<^SC005::Send {Blind}{U+20ac} ; €
+>!<^SC005::Send {Blind}{U+00a2} ; ¢

; QWERTY 5
#if
SC006::Send {Blind}{U+0035} ; 5
+SC006::Send {Blind}{U+0025} ; %
>!<^SC006::Send {Blind}{U+2030} ; ‰
+>!<^SC006::Send {Blind}{U+2031} ; ‱

; QWERTY 6
#if
SC007::Send {Blind}{U+0036} ; 6
+SC007::
; circum
if (DeadKeys.item("circum") == "") {
  DeadKeys.item("circum") := ComObjCreate("Scripting.Dictionary")
  DeadKeys.item("circum").item("1") := "¹"
  DeadKeys.item("circum").item("2") := "²"
  DeadKeys.item("circum").item("3") := "³"
  DeadKeys.item("circum").item("4") := "⁴"
  DeadKeys.item("circum").item("5") := "⁵"
  DeadKeys.item("circum").item("6") := "⁶"
  DeadKeys.item("circum").item("7") := "⁷"
  DeadKeys.item("circum").item("8") := "⁸"
  DeadKeys.item("circum").item("9") := "⁹"
  DeadKeys.item("circum").item("0") := "⁰"
  DeadKeys.item("circum").item("-") := "⁻"
  DeadKeys.item("circum").item("=") := "⁼"
  DeadKeys.item("circum").item("w") := "ŵ"
  DeadKeys.item("circum").item("e") := "ê"
  DeadKeys.item("circum").item("y") := "ŷ"
  DeadKeys.item("circum").item("u") := "û"
  DeadKeys.item("circum").item("i") := "î"
  DeadKeys.item("circum").item("o") := "ô"
  DeadKeys.item("circum").item("a") := "â"
  DeadKeys.item("circum").item("s") := "ŝ"
  DeadKeys.item("circum").item("g") := "ĝ"
  DeadKeys.item("circum").item("h") := "ĥ"
  DeadKeys.item("circum").item("j") := "ĵ"
  DeadKeys.item("circum").item("z") := "ẑ"
  DeadKeys.item("circum").item("c") := "ĉ"
  DeadKeys.item("circum").item("n") := "ⁿ"
  DeadKeys.item("circum").item("(") := "⁽"
  DeadKeys.item("circum").item(")") := "⁾"
  DeadKeys.item("circum").item("+") := "⁺"
  DeadKeys.item("circum").item("W") := "Ŵ"
  DeadKeys.item("circum").item("E") := "Ê"
  DeadKeys.item("circum").item("Y") := "Ŷ"
  DeadKeys.item("circum").item("U") := "Û"
  DeadKeys.item("circum").item("I") := "Î"
  DeadKeys.item("circum").item("O") := "Ô"
  DeadKeys.item("circum").item("A") := "Â"
  DeadKeys.item("circum").item("S") := "Ŝ"
  DeadKeys.item("circum").item("G") := "Ĝ"
  DeadKeys.item("circum").item("H") := "Ĥ"
  DeadKeys.item("circum").item("J") := "Ĵ"
  DeadKeys.item("circum").item("C") := "Ĉ"
  DeadKeys.item("circum").item("Z") := "Ẑ"
  DeadKeys.item("circum").item(" ") := "^"
}
DeadKey("^", DeadKeys.item("circum"), "circum")
Return
>!<^SC007::Send {Blind}{U+03c3} ; σ
+>!<^SC007::Send {Blind}{U+2211} ; ∑

; QWERTY 7
#if
SC008::Send {Blind}{U+0037} ; 7
+SC008::Send {Blind}{U+0026} ; &
>!<^SC008::Send {Blind}{U+03c0} ; π
+>!<^SC008::Send {Blind}{U+03a0} ; Π

; QWERTY 8
#if
SC009::Send {Blind}{U+0038} ; 8
+SC009::Send {Blind}{U+002a} ; *
>!<^SC009::Send {Blind}{U+00b0} ; °
+>!<^SC009::Send {Blind}{U+2300} ; ⌀

; QWERTY 9
#if
SC00a::Send {Blind}{U+0039} ; 9
+SC00a::Send {Blind}{U+0028} ; (
>!<^SC00a::Send {Blind}{U+2018} ; ‘
+>!<^SC00a::Send {Blind}{U+201c} ; “

; QWERTY 0
#if
SC00b::Send {Blind}{U+0030} ; 0
+SC00b::Send {Blind}{U+0029} ; )
>!<^SC00b::Send {Blind}{U+2019} ; ’
+>!<^SC00b::Send {Blind}{U+201d} ; ”

; QWERTY -
#if
SC00c::Send {Blind}{U+002d} ; -
+SC00c::Send {Blind}{U+005f} ; _
>!<^SC00c::Send {Blind}{U+2013} ; –
+>!<^SC00c::Send {Blind}{U+2014} ; —

; QWERTY +
#if
SC00d::Send {Blind}{U+003d} ; =
+SC00d::Send {Blind}{U+002b} ; +
>!<^SC00d::Send {Blind}{U+2260} ; ≠
+>!<^SC00d::Send {Blind}{U+00b1} ; ±

; QWERTY Q
#if
SC010::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0071} ; q
} else {
  Send {Blind}{U+0051} ; Q
}
Return
+SC010::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0051} ; Q
} else {
  Send {Blind}{U+0071} ; q
}
Return
>!<^SC010::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00e6} ; æ
} else {
  Send {Blind}{U+00c6} ; Æ
}
Return
+>!<^SC010::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00c6} ; Æ
} else {
  Send {Blind}{U+00e6} ; æ
}
Return

; QWERTY W
#if
SC011::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0077} ; w
} else {
  Send {Blind}{U+0057} ; W
}
Return
+SC011::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0057} ; W
} else {
  Send {Blind}{U+0077} ; w
}
Return
>!<^SC011::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+01bf} ; ƿ
} else {
  Send {Blind}{U+01f7} ; Ƿ
}
Return
+>!<^SC011::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+01f7} ; Ƿ
} else {
  Send {Blind}{U+01bf} ; ƿ
}
Return

; QWERTY E
#if
SC012::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0065} ; e
} else {
  Send {Blind}{U+0045} ; E
}
Return
+SC012::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0045} ; E
} else {
  Send {Blind}{U+0065} ; e
}
Return
>!<^SC012::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0259} ; ə
} else {
  Send {Blind}{U+018f} ; Ə
}
Return
+>!<^SC012::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+018f} ; Ə
} else {
  Send {Blind}{U+0259} ; ə
}
Return

; QWERTY R
#if
SC013::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0072} ; r
} else {
  Send {Blind}{U+0052} ; R
}
Return
+SC013::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0052} ; R
} else {
  Send {Blind}{U+0072} ; r
}
Return
>!<^SC013::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00ae} ; ®
} else {
  Send {Blind}{U+00a9} ; ©
}
Return
+>!<^SC013::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00a9} ; ©
} else {
  Send {Blind}{U+00ae} ; ®
}
Return

; QWERTY T
#if
SC014::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0074} ; t
} else {
  Send {Blind}{U+0054} ; T
}
Return
+SC014::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0054} ; T
} else {
  Send {Blind}{U+0074} ; t
}
Return
>!<^SC014::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00fe} ; þ
} else {
  Send {Blind}{U+00de} ; Þ
}
Return
+>!<^SC014::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00de} ; Þ
} else {
  Send {Blind}{U+00fe} ; þ
}
Return

; QWERTY Y
#if
SC015::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0079} ; y
} else {
  Send {Blind}{U+0059} ; Y
}
Return
+SC015::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0059} ; Y
} else {
  Send {Blind}{U+0079} ; y
}
Return
>!<^SC015::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+021d} ; ȝ
} else {
  Send {Blind}{U+021c} ; Ȝ
}
Return
+>!<^SC015::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+021c} ; Ȝ
} else {
  Send {Blind}{U+021d} ; ȝ
}
Return

; QWERTY U
#if
SC016::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0075} ; u
} else {
  Send {Blind}{U+0055} ; U
}
Return
+SC016::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0055} ; U
} else {
  Send {Blind}{U+0075} ; u
}
Return
>!<^SC016::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+016f} ; ů
} else {
  Send {Blind}{U+016e} ; Ů
}
Return
+>!<^SC016::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+016e} ; Ů
} else {
  Send {Blind}{U+016f} ; ů
}
Return

; QWERTY I
#if
SC017::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0069} ; i
} else {
  Send {Blind}{U+0049} ; I
}
Return
+SC017::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0049} ; I
} else {
  Send {Blind}{U+0069} ; i
}
Return
>!<^SC017::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0131} ; ı
} else {
  Send {Blind}{U+0130} ; İ
}
Return
+>!<^SC017::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0130} ; İ
} else {
  Send {Blind}{U+0131} ; ı
}
Return

; QWERTY O
#if
SC018::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+006f} ; o
} else {
  Send {Blind}{U+004f} ; O
}
Return
+SC018::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+004f} ; O
} else {
  Send {Blind}{U+006f} ; o
}
Return
>!<^SC018::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00f8} ; ø
} else {
  Send {Blind}{U+00d8} ; Ø
}
Return
+>!<^SC018::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00d8} ; Ø
} else {
  Send {Blind}{U+00f8} ; ø
}
Return

; QWERTY P
#if
SC019::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0070} ; p
} else {
  Send {Blind}{U+0050} ; P
}
Return
+SC019::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0050} ; P
} else {
  Send {Blind}{U+0070} ; p
}
Return
>!<^SC019::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0153} ; œ
} else {
  Send {Blind}{U+0152} ; Œ
}
Return
+>!<^SC019::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0152} ; Œ
} else {
  Send {Blind}{U+0153} ; œ
}
Return

; QWERTY [
#if
SC01a::Send {Blind}{U+005b} ; [
+SC01a::Send {Blind}{U+007b} ; {
>!<^SC01a::Send {Blind}{U+00ab} ; «
+>!<^SC01a::Send {Blind}{U+2039} ; ‹

; QWERTY ]
#if
SC01b::Send {Blind}{U+005d} ; ]
+SC01b::Send {Blind}{U+007d} ; }
>!<^SC01b::Send {Blind}{U+00bb} ; »
+>!<^SC01b::Send {Blind}{U+203a} ; ›

; QWERTY A
#if
SC01e::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0061} ; a
} else {
  Send {Blind}{U+0041} ; A
}
Return
+SC01e::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0041} ; A
} else {
  Send {Blind}{U+0061} ; a
}
Return
>!<^SC01e::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00e5} ; å
} else {
  Send {Blind}{U+00c5} ; Å
}
Return
+>!<^SC01e::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00c5} ; Å
} else {
  Send {Blind}{U+00e5} ; å
}
Return

; QWERTY S
#if
SC01f::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0073} ; s
} else {
  Send {Blind}{U+0053} ; S
}
Return
+SC01f::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0053} ; S
} else {
  Send {Blind}{U+0073} ; s
}
Return
>!<^SC01f::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00df} ; ß
} else {
  Send {Blind}{U+1e9e} ; ẞ
}
Return
+>!<^SC01f::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+1e9e} ; ẞ
} else {
  Send {Blind}{U+00df} ; ß
}
Return

; QWERTY D
#if
SC020::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0064} ; d
} else {
  Send {Blind}{U+0044} ; D
}
Return
+SC020::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0044} ; D
} else {
  Send {Blind}{U+0064} ; d
}
Return
>!<^SC020::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00f0} ; ð
} else {
  Send {Blind}{U+00d0} ; Ð
}
Return
+>!<^SC020::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00d0} ; Ð
} else {
  Send {Blind}{U+00f0} ; ð
}
Return

; QWERTY F
#if
SC021::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0066} ; f
} else {
  Send {Blind}{U+0046} ; F
}
Return
+SC021::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0046} ; F
} else {
  Send {Blind}{U+0066} ; f
}
Return
>!<^SC021::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0192} ; ƒ
} else {
  Send {Blind}{U+017f} ; ſ
}
Return
+>!<^SC021::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+017f} ; ſ
} else {
  Send {Blind}{U+0192} ; ƒ
}
Return

; QWERTY G
#if
SC022::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0067} ; g
} else {
  Send {Blind}{U+0047} ; G
}
Return
+SC022::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0047} ; G
} else {
  Send {Blind}{U+0067} ; g
}
Return
>!<^SC022::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+014b} ; ŋ
} else {
  Send {Blind}{U+014a} ; Ŋ
}
Return
+>!<^SC022::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+014a} ; Ŋ
} else {
  Send {Blind}{U+014b} ; ŋ
}
Return

; QWERTY H
#if
SC023::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0068} ; h
} else {
  Send {Blind}{U+0048} ; H
}
Return
+SC023::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0048} ; H
} else {
  Send {Blind}{U+0068} ; h
}
Return
>!<^SC023::Return
+>!<^SC023::Return

; QWERTY J
#if
SC024::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+006a} ; j
} else {
  Send {Blind}{U+004a} ; J
}
Return
+SC024::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+004a} ; J
} else {
  Send {Blind}{U+006a} ; j
}
Return
>!<^SC024::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0133} ; ĳ
} else {
  Send {Blind}{U+0132} ; Ĳ
}
Return
+>!<^SC024::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0132} ; Ĳ
} else {
  Send {Blind}{U+0133} ; ĳ
}
Return

; QWERTY K
#if
SC025::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+006b} ; k
} else {
  Send {Blind}{U+004b} ; K
}
Return
+SC025::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+004b} ; K
} else {
  Send {Blind}{U+006b} ; k
}
Return
>!<^SC025::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+222b} ; ∫
} else {
  Send {Blind}{U+2202} ; ∂
}
Return
+>!<^SC025::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+2202} ; ∂
} else {
  Send {Blind}{U+222b} ; ∫
}
Return

; QWERTY L
#if
SC026::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+006c} ; l
} else {
  Send {Blind}{U+004c} ; L
}
Return
+SC026::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+004c} ; L
} else {
  Send {Blind}{U+006c} ; l
}
Return
>!<^SC026::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+2020} ; †
} else {
  Send {Blind}{U+2021} ; ‡
}
Return
+>!<^SC026::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+2021} ; ‡
} else {
  Send {Blind}{U+2020} ; †
}
Return

; QWERTY ;
#if
SC027::Send {Blind}{U+003b} ; ;
+SC027::Send {Blind}{U+003a} ; :
>!<^SC027::Send {Blind}{U+2026} ; …
+>!<^SC027::Send {Blind}{U+00a6} ; ¦

; QWERTY '
#if
SC028::
; acute
if (DeadKeys.item("acute") == "") {
  DeadKeys.item("acute") := ComObjCreate("Scripting.Dictionary")
  DeadKeys.item("acute").item("7") := "ű"
  DeadKeys.item("acute").item("9") := "ő"
  DeadKeys.item("acute").item("q") := "ǽ"
  DeadKeys.item("acute").item("w") := "ẃ"
  DeadKeys.item("acute").item("e") := "é"
  DeadKeys.item("acute").item("r") := "ŕ"
  DeadKeys.item("acute").item("y") := "ý"
  DeadKeys.item("acute").item("u") := "ú"
  DeadKeys.item("acute").item("i") := "í"
  DeadKeys.item("acute").item("o") := "ó"
  DeadKeys.item("acute").item("p") := "ṕ"
  DeadKeys.item("acute").item("a") := "á"
  DeadKeys.item("acute").item("s") := "ś"
  DeadKeys.item("acute").item("g") := "ǵ"
  DeadKeys.item("acute").item("k") := "ḱ"
  DeadKeys.item("acute").item("l") := "ĺ"
  DeadKeys.item("acute").item("z") := "ź"
  DeadKeys.item("acute").item("c") := "ć"
  DeadKeys.item("acute").item("n") := "ń"
  DeadKeys.item("acute").item("m") := "ḿ"
  DeadKeys.item("acute").item("&") := "Ű"
  DeadKeys.item("acute").item("(") := "Ő"
  DeadKeys.item("acute").item("Q") := "Ǽ"
  DeadKeys.item("acute").item("W") := "Ẃ"
  DeadKeys.item("acute").item("E") := "É"
  DeadKeys.item("acute").item("R") := "Ŕ"
  DeadKeys.item("acute").item("Y") := "Ý"
  DeadKeys.item("acute").item("U") := "Ú"
  DeadKeys.item("acute").item("I") := "Í"
  DeadKeys.item("acute").item("O") := "Ó"
  DeadKeys.item("acute").item("P") := "Ṕ"
  DeadKeys.item("acute").item("A") := "Á"
  DeadKeys.item("acute").item("S") := "Ś"
  DeadKeys.item("acute").item("G") := "Ǵ"
  DeadKeys.item("acute").item("K") := "Ḱ"
  DeadKeys.item("acute").item("L") := "Ĺ"
  DeadKeys.item("acute").item("Z") := "Ź"
  DeadKeys.item("acute").item("C") := "Ć"
  DeadKeys.item("acute").item("N") := "Ń"
  DeadKeys.item("acute").item("M") := "Ḿ"
  DeadKeys.item("acute").item(" ") := "’"
}
DeadKey("'", DeadKeys.item("acute"), "acute")
Return
+SC028::
; dresis
if (DeadKeys.item("dresis") == "") {
  DeadKeys.item("dresis") := ComObjCreate("Scripting.Dictionary")
  DeadKeys.item("dresis").item("3") := "ȅ"
  DeadKeys.item("dresis").item("4") := "ȑ"
  DeadKeys.item("dresis").item("7") := "ȕ"
  DeadKeys.item("dresis").item("8") := "ȉ"
  DeadKeys.item("dresis").item("9") := "ȍ"
  DeadKeys.item("dresis").item("q") := "ȁ"
  DeadKeys.item("dresis").item("w") := "ẅ"
  DeadKeys.item("dresis").item("e") := "ë"
  DeadKeys.item("dresis").item("t") := "ẗ"
  DeadKeys.item("dresis").item("y") := "ÿ"
  DeadKeys.item("dresis").item("u") := "ü"
  DeadKeys.item("dresis").item("i") := "ï"
  DeadKeys.item("dresis").item("o") := "ö"
  DeadKeys.item("dresis").item("a") := "ä"
  DeadKeys.item("dresis").item("h") := "ḧ"
  DeadKeys.item("dresis").item("j") := "ṳ"
  DeadKeys.item("dresis").item("x") := "ẍ"
  DeadKeys.item("dresis").item("#") := "Ȅ"
  DeadKeys.item("dresis").item("$") := "Ȑ"
  DeadKeys.item("dresis").item("&") := "Ȕ"
  DeadKeys.item("dresis").item("*") := "Ȉ"
  DeadKeys.item("dresis").item("(") := "Ȍ"
  DeadKeys.item("dresis").item("Q") := "Ȁ"
  DeadKeys.item("dresis").item("W") := "Ẅ"
  DeadKeys.item("dresis").item("E") := "Ë"
  DeadKeys.item("dresis").item("Y") := "Ÿ"
  DeadKeys.item("dresis").item("U") := "Ü"
  DeadKeys.item("dresis").item("I") := "Ï"
  DeadKeys.item("dresis").item("O") := "Ö"
  DeadKeys.item("dresis").item("A") := "Ä"
  DeadKeys.item("dresis").item("H") := "Ḧ"
  DeadKeys.item("dresis").item("J") := "Ṳ"
  DeadKeys.item("dresis").item("X") := "Ẍ"
  DeadKeys.item("dresis").item(" ") := """"
}
DeadKey("""", DeadKeys.item("dresis"), "dresis")
Return
>!<^SC028::Send {Blind}{U+2032} ; ′
+>!<^SC028::Send {Blind}{U+2033} ; ″

; QWERTY \
#if
SC02b::
; caron
if (DeadKeys.item("caron") == "") {
  DeadKeys.item("caron") := ComObjCreate("Scripting.Dictionary")
  DeadKeys.item("caron").item("1") := "₁"
  DeadKeys.item("caron").item("2") := "₂"
  DeadKeys.item("caron").item("3") := "₃"
  DeadKeys.item("caron").item("4") := "₄"
  DeadKeys.item("caron").item("5") := "₅"
  DeadKeys.item("caron").item("6") := "₆"
  DeadKeys.item("caron").item("7") := "₇"
  DeadKeys.item("caron").item("8") := "₈"
  DeadKeys.item("caron").item("9") := "₉"
  DeadKeys.item("caron").item("0") := "₀"
  DeadKeys.item("caron").item("-") := "₋"
  DeadKeys.item("caron").item("=") := "₌"
  DeadKeys.item("caron").item("q") := "ǯ"
  DeadKeys.item("caron").item("e") := "ě"
  DeadKeys.item("caron").item("r") := "ř"
  DeadKeys.item("caron").item("t") := "ť"
  DeadKeys.item("caron").item("u") := "ǔ"
  DeadKeys.item("caron").item("i") := "ǐ"
  DeadKeys.item("caron").item("o") := "ǒ"
  DeadKeys.item("caron").item("a") := "ǎ"
  DeadKeys.item("caron").item("s") := "š"
  DeadKeys.item("caron").item("d") := "ď"
  DeadKeys.item("caron").item("g") := "ǧ"
  DeadKeys.item("caron").item("h") := "ȟ"
  DeadKeys.item("caron").item("j") := "ǆ"
  DeadKeys.item("caron").item("l") := "ľ"
  DeadKeys.item("caron").item("x") := "ₓ"
  DeadKeys.item("caron").item("c") := "č"
  DeadKeys.item("caron").item("n") := "ň"
  DeadKeys.item("caron").item("(") := "₍"
  DeadKeys.item("caron").item(")") := "₎"
  DeadKeys.item("caron").item("+") := "₊"
  DeadKeys.item("caron").item("Q") := "Ǯ"
  DeadKeys.item("caron").item("E") := "Ě"
  DeadKeys.item("caron").item("R") := "Ř"
  DeadKeys.item("caron").item("T") := "Ť"
  DeadKeys.item("caron").item("U") := "Ǔ"
  DeadKeys.item("caron").item("I") := "Ǐ"
  DeadKeys.item("caron").item("O") := "Ǒ"
  DeadKeys.item("caron").item("A") := "Ǎ"
  DeadKeys.item("caron").item("S") := "Š"
  DeadKeys.item("caron").item("D") := "Ď"
  DeadKeys.item("caron").item("G") := "Ǧ"
  DeadKeys.item("caron").item("H") := "Ȟ"
  DeadKeys.item("caron").item("J") := "ǅ"
  DeadKeys.item("caron").item("L") := "Ľ"
  DeadKeys.item("caron").item("C") := "Č"
  DeadKeys.item("caron").item("N") := "Ň"
  DeadKeys.item("caron").item(" ") := "\"
}
DeadKey("\", DeadKeys.item("caron"), "caron")
Return
+SC02b::
; macron
if (DeadKeys.item("macron") == "") {
  DeadKeys.item("macron") := ComObjCreate("Scripting.Dictionary")
  DeadKeys.item("macron").item("q") := "ǣ"
  DeadKeys.item("macron").item("e") := "ē"
  DeadKeys.item("macron").item("r") := "ɍ"
  DeadKeys.item("macron").item("t") := "ŧ"
  DeadKeys.item("macron").item("y") := "ȳ"
  DeadKeys.item("macron").item("u") := "ū"
  DeadKeys.item("macron").item("i") := "ī"
  DeadKeys.item("macron").item("o") := "ō"
  DeadKeys.item("macron").item("p") := "ᵽ"
  DeadKeys.item("macron").item("a") := "ā"
  DeadKeys.item("macron").item("s") := "ꞩ"
  DeadKeys.item("macron").item("d") := "đ"
  DeadKeys.item("macron").item("g") := "ḡ"
  DeadKeys.item("macron").item("h") := "ħ"
  DeadKeys.item("macron").item("j") := "ɉ"
  DeadKeys.item("macron").item("k") := "ꝃ"
  DeadKeys.item("macron").item("l") := "ł"
  DeadKeys.item("macron").item("z") := "ƶ"
  DeadKeys.item("macron").item("c") := "ȼ"
  DeadKeys.item("macron").item("v") := "ꝟ"
  DeadKeys.item("macron").item("b") := "ƀ"
  DeadKeys.item("macron").item("n") := "ꞥ"
  DeadKeys.item("macron").item("Q") := "Ǣ"
  DeadKeys.item("macron").item("E") := "Ē"
  DeadKeys.item("macron").item("R") := "Ɍ"
  DeadKeys.item("macron").item("T") := "Ŧ"
  DeadKeys.item("macron").item("Y") := "Ȳ"
  DeadKeys.item("macron").item("U") := "Ū"
  DeadKeys.item("macron").item("I") := "Ī"
  DeadKeys.item("macron").item("O") := "Ō"
  DeadKeys.item("macron").item("P") := "Ᵽ"
  DeadKeys.item("macron").item("A") := "Ā"
  DeadKeys.item("macron").item("S") := "Ꞩ"
  DeadKeys.item("macron").item("D") := "Đ"
  DeadKeys.item("macron").item("G") := "Ḡ"
  DeadKeys.item("macron").item("H") := "Ħ"
  DeadKeys.item("macron").item("J") := "Ɉ"
  DeadKeys.item("macron").item("K") := "Ꝃ"
  DeadKeys.item("macron").item("L") := "Ł"
  DeadKeys.item("macron").item("Z") := "Ƶ"
  DeadKeys.item("macron").item("C") := "Ȼ"
  DeadKeys.item("macron").item("V") := "Ꝟ"
  DeadKeys.item("macron").item("B") := "Ƀ"
  DeadKeys.item("macron").item("N") := "Ꞥ"
  DeadKeys.item("macron").item(",") := "≮"
  DeadKeys.item("macron").item(".") := "≯"
  DeadKeys.item("macron").item("<") := "≰"
  DeadKeys.item("macron").item(">") := "≱"
  DeadKeys.item("macron").item(" ") := "|"
}
DeadKey("|", DeadKeys.item("macron"), "macron")
Return
>!<^SC02b::Send {Blind}{U+00ac} ; ¬
+>!<^SC02b::Send {Blind}{U+2116} ; №

; QWERTY Iso
#if
SC056::
; cedilla
if (DeadKeys.item("cedilla") == "") {
  DeadKeys.item("cedilla") := ComObjCreate("Scripting.Dictionary")
  DeadKeys.item("cedilla").item("3") := "ę"
  DeadKeys.item("cedilla").item("5") := "ț"
  DeadKeys.item("cedilla").item("7") := "ų"
  DeadKeys.item("cedilla").item("8") := "į"
  DeadKeys.item("cedilla").item("9") := "ǫ"
  DeadKeys.item("cedilla").item("q") := "ą"
  DeadKeys.item("cedilla").item("w") := "ș"
  DeadKeys.item("cedilla").item("e") := "ȩ"
  DeadKeys.item("cedilla").item("r") := "ŗ"
  DeadKeys.item("cedilla").item("t") := "ţ"
  DeadKeys.item("cedilla").item("s") := "ş"
  DeadKeys.item("cedilla").item("d") := "ḑ"
  DeadKeys.item("cedilla").item("g") := "ģ"
  DeadKeys.item("cedilla").item("h") := "ḩ"
  DeadKeys.item("cedilla").item("k") := "ķ"
  DeadKeys.item("cedilla").item("l") := "ļ"
  DeadKeys.item("cedilla").item("c") := "ç"
  DeadKeys.item("cedilla").item("n") := "ņ"
  DeadKeys.item("cedilla").item("#") := "Ę"
  DeadKeys.item("cedilla").item("%") := "Ț"
  DeadKeys.item("cedilla").item("&") := "Ų"
  DeadKeys.item("cedilla").item("*") := "Į"
  DeadKeys.item("cedilla").item("(") := "Ǫ"
  DeadKeys.item("cedilla").item("Q") := "Ą"
  DeadKeys.item("cedilla").item("W") := "Ș"
  DeadKeys.item("cedilla").item("E") := "Ȩ"
  DeadKeys.item("cedilla").item("R") := "Ŗ"
  DeadKeys.item("cedilla").item("T") := "Ţ"
  DeadKeys.item("cedilla").item("S") := "Ş"
  DeadKeys.item("cedilla").item("D") := "Ḑ"
  DeadKeys.item("cedilla").item("G") := "Ģ"
  DeadKeys.item("cedilla").item("H") := "Ḩ"
  DeadKeys.item("cedilla").item("K") := "Ķ"
  DeadKeys.item("cedilla").item("L") := "Ļ"
  DeadKeys.item("cedilla").item("C") := "Ç"
  DeadKeys.item("cedilla").item("N") := "Ņ"
  DeadKeys.item("cedilla").item(" ") := "§"
}
DeadKey("§", DeadKeys.item("cedilla"), "cedilla")
Return
+SC056::
; dot
if (DeadKeys.item("dot") == "") {
  DeadKeys.item("dot") := ComObjCreate("Scripting.Dictionary")
  DeadKeys.item("dot").item("w") := "ẇ"
  DeadKeys.item("dot").item("e") := "ė"
  DeadKeys.item("dot").item("r") := "ṙ"
  DeadKeys.item("dot").item("t") := "ṫ"
  DeadKeys.item("dot").item("y") := "ẏ"
  DeadKeys.item("dot").item("o") := "ȯ"
  DeadKeys.item("dot").item("p") := "ṗ"
  DeadKeys.item("dot").item("a") := "ȧ"
  DeadKeys.item("dot").item("s") := "ṡ"
  DeadKeys.item("dot").item("d") := "ḋ"
  DeadKeys.item("dot").item("f") := "ḟ"
  DeadKeys.item("dot").item("h") := "ḥ"
  DeadKeys.item("dot").item("l") := "ḷ"
  DeadKeys.item("dot").item("z") := "ż"
  DeadKeys.item("dot").item("x") := "ẋ"
  DeadKeys.item("dot").item("c") := "ċ"
  DeadKeys.item("dot").item("b") := "ḃ"
  DeadKeys.item("dot").item("n") := "ṅ"
  DeadKeys.item("dot").item("m") := "ṁ"
  DeadKeys.item("dot").item("W") := "ẇ"
  DeadKeys.item("dot").item("E") := "Ė"
  DeadKeys.item("dot").item("R") := "Ṙ"
  DeadKeys.item("dot").item("T") := "Ṫ"
  DeadKeys.item("dot").item("Y") := "Ẏ"
  DeadKeys.item("dot").item("O") := "Ȯ"
  DeadKeys.item("dot").item("P") := "Ṗ"
  DeadKeys.item("dot").item("A") := "Ȧ"
  DeadKeys.item("dot").item("S") := "Ṡ"
  DeadKeys.item("dot").item("D") := "Ḋ"
  DeadKeys.item("dot").item("F") := "Ḟ"
  DeadKeys.item("dot").item("H") := "Ḥ"
  DeadKeys.item("dot").item("L") := "Ḷ"
  DeadKeys.item("dot").item("Z") := "Ż"
  DeadKeys.item("dot").item("X") := "Ẋ"
  DeadKeys.item("dot").item("C") := "Ċ"
  DeadKeys.item("dot").item("B") := "Ḃ"
  DeadKeys.item("dot").item("N") := "Ṅ"
  DeadKeys.item("dot").item("M") := "Ṁ"
  DeadKeys.item("dot").item(" ") := "±"
}
DeadKey("±", DeadKeys.item("dot"), "dot")
Return
>!<^SC056::Send {Blind}{U+00b6} ; ¶
+>!<^SC056::Send {Blind}{U+221e} ; ∞

; QWERTY Z
#if
SC02c::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+007a} ; z
} else {
  Send {Blind}{U+005a} ; Z
}
Return
+SC02c::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+005a} ; Z
} else {
  Send {Blind}{U+007a} ; z
}
Return
>!<^SC02c::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0292} ; ʒ
} else {
  Send {Blind}{U+01b7} ; Ʒ
}
Return
+>!<^SC02c::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+01b7} ; Ʒ
} else {
  Send {Blind}{U+0292} ; ʒ
}
Return

; QWERTY X
#if
SC02d::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0078} ; x
} else {
  Send {Blind}{U+0058} ; X
}
Return
+SC02d::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0058} ; X
} else {
  Send {Blind}{U+0078} ; x
}
Return
>!<^SC02d::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00d7} ; ×
} else {
  Send {Blind}{U+2a2f} ; ⨯
}
Return
+>!<^SC02d::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+2a2f} ; ⨯
} else {
  Send {Blind}{U+00d7} ; ×
}
Return

; QWERTY C
#if
SC02e::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0063} ; c
} else {
  Send {Blind}{U+0043} ; C
}
Return
+SC02e::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0043} ; C
} else {
  Send {Blind}{U+0063} ; c
}
Return
>!<^SC02e::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00e7} ; ç
} else {
  Send {Blind}{U+00c7} ; Ç
}
Return
+>!<^SC02e::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00c7} ; Ç
} else {
  Send {Blind}{U+00e7} ; ç
}
Return

; QWERTY V
#if
SC02f::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0076} ; v
} else {
  Send {Blind}{U+0056} ; V
}
Return
+SC02f::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0056} ; V
} else {
  Send {Blind}{U+0076} ; v
}
Return
>!<^SC02f::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+221a} ; √
} else {
  Send {Blind}{U+221b} ; ∛
}
Return
+>!<^SC02f::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+221b} ; ∛
} else {
  Send {Blind}{U+221a} ; √
}
Return

; QWERTY B
#if
SC030::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0062} ; b
} else {
  Send {Blind}{U+0042} ; B
}
Return
+SC030::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0042} ; B
} else {
  Send {Blind}{U+0062} ; b
}
Return
>!<^SC030::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+03b2} ; β
} else {
  Send {Blind}{U+0263} ; ɣ
}
Return
+>!<^SC030::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+0263} ; ɣ
} else {
  Send {Blind}{U+03b2} ; β
}
Return

; QWERTY N
#if
SC031::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+006e} ; n
} else {
  Send {Blind}{U+004e} ; N
}
Return
+SC031::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+004e} ; N
} else {
  Send {Blind}{U+006e} ; n
}
Return
>!<^SC031::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00f1} ; ñ
} else {
  Send {Blind}{U+00d1} ; Ñ
}
Return
+>!<^SC031::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00d1} ; Ñ
} else {
  Send {Blind}{U+00f1} ; ñ
}
Return

; QWERTY M
#if
SC032::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+006d} ; m
} else {
  Send {Blind}{U+004d} ; M
}
Return
+SC032::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+004d} ; M
} else {
  Send {Blind}{U+006d} ; m
}
Return
>!<^SC032::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+00b5} ; µ
} else {
  Send {Blind}{U+2126} ; Ω
}
Return
+>!<^SC032::
if not GetKeyState("CapsLock", "T") {
  Send {Blind}{U+2126} ; Ω
} else {
  Send {Blind}{U+00b5} ; µ
}
Return

; QWERTY ,
#if
SC033::Send {Blind}{U+002c} ; ,
+SC033::Send {Blind}{U+003c} ; <
>!<^SC033::Send {Blind}{U+2264} ; ≤
+>!<^SC033::Send {Blind}{U+2e22} ; ⸢

; QWERTY .
#if
SC034::Send {Blind}{U+002e} ; .
+SC034::Send {Blind}{U+003e} ; >
>!<^SC034::Send {Blind}{U+2265} ; ≥
+>!<^SC034::Send {Blind}{U+2e25} ; ⸥

; QWERTY /
#if
SC035::Send {Blind}{U+002f} ; /
+SC035::Send {Blind}{U+003f} ; ?
>!<^SC035::Send {Blind}{U+00f7} ; ÷
+>!<^SC035::Send {Blind}{U+00bf} ; ¿

; QWERTY Space
#if
SC039::Send {Blind}{U+0020} ;  
+SC039::Send {Blind}{U+0020} ;  
>!<^SC039::Send {Blind}{U+00a0} ;  
+>!<^SC039::Send {Blind}{U+202f} ;  
