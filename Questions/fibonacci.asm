INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data

.code
main PROC
    call readInt
    mov ecx , eax
    mov ebx , 1 ;first no
    mov edx , 1 ;second no
    myloop:
        mov eax , ebx 
        call writeInt
        add ebx , edx
        xchg ebx, edx
    loop myloop
    call crlf
exit
main ENDP

END main

