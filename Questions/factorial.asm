INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data

.code
main PROC
    call readInt
    mov ecx , eax
    dec ecx
    myloop:
        mul  ecx
    loop myloop
    call WriteInt
    call crlf
exit
main ENDP

END main

