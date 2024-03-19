INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
array DWORD 10 , 20 , 30 , 40

.code
main PROC
    mov ecx, 4
    mov esi , OFFSET array
    mov ebx , 0
    mainloop:
        mov eax , [esi]
        add ebx , eax
        add esi , 4
        loop mainloop
    mov eax , ebx
    call WriteInt
    call Crlf
exit
main ENDP

END main
