TITLE Hello World

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
   
.code
main PROC
   
    mov eax, blue + (white * 16)
    call SetTextColor

    call WaitMsg
    call Clrscr
    mov eax,500
    call Delay
    call DumpRegs

    exit      ; Exit the program
main ENDP

END main
