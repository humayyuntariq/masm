INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data

.code
main PROC
 call ReadDec
 call WriteHex
 call Crlf
 call WriteBin
 call Crlf
 call WriteDec
 call Crlf
 exit
main ENDP
END main