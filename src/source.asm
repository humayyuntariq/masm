INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
.code
main PROC
    call readint
    call writebin
    call crlf
    not eax
    call writebin
exit
main ENDP

END main
