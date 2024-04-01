INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    array DWORD 1 , 2 , 3 , 4 , 5
.code
main PROC
    mov esi, OFFSET array
    mov ecx , 5
    ;adding to stack
    myloop:
        mov eax , [esi] 
        push eax
        add esi , 4
    loop myloop

    mov esi, OFFSET array
    mov ecx , 5
    ;removing from stack
    mysloop:
        pop eax
        mov [esi] , eax
        call WriteInt
        add esi , 4
    loop mysloop

    call crlf
exit
main ENDP

END main

