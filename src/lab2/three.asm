TITLE Hello World

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    
    x DWORD 20

.code
main PROC
    Call ReadInt
    Call WriteInt
    CALL Crlf
    exit      ; Exit the program
main ENDP

END main
