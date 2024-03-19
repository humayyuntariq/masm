INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
.code
main PROC
    mov eax, 3170
    call writeint
exit
main ENDP

END main
