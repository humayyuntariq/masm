INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
.code
main PROC
 call ReadInt ; taking an integer
 call WriteBin ; coverting that number to binary
 call Crlf
 not eax ; it will do bitwise inversion
 call WriteBin ; printing the result in binary
 call Crlf
Exit
Main ENDP
END main