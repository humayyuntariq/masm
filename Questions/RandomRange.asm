INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
; INCLUDELIB Random32.lib
.data
.code
main PROC
    call Randomize
    mov eax , 500 ;Range 0-499
    call RandomRange
    call WriteInt
exit
main ENDP
END main