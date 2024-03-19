INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
array SDWORD 00 , 00 , 00 , 00 , 00 ,  00 , 00 , 00 , 00 , 00
.code
main PROC
    mov ecx, 10
    mov ebx, 0
    mov esi , OFFSET array
    mainloop:
        call ReadInt
        mov [esi] ,  eax
        add esi , 4
        loop mainloop
    mov ecx , 10
    mov esi , OFFSET array
    writeloop:
        mov eax ,  [esi]
        add ebx , eax
        add esi , 4
        call WriteInt
        call Crlf
        loop writeloop
    call Crlf
    mov eax , ebx
    call WriteInt
    call Crlf
exit
main ENDP

END main
