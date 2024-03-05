TITLE Hello World

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
   small SWORD 10; small is a 16-bit integer
.code
main PROC
    MOV eax ,  SDWORD PTR small
    call WriteInt
    call Crlf
    exit      ; Exit the program
main ENDP

END main
