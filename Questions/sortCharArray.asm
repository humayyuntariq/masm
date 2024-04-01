INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
    array  BYTE 'H'  , 'A' , 'M' , 'Z' , 'A'
.code
main PROC
    mov ecx , lengthof array
    mov esi , offset array
    myloop:
        mov ebx , ecx
        mov ecx , 4
        mov edi , offset array
        secondloop:
            mov al , [esi]
            mov dl , [edi]
            cmp al , dl
            jb swap
            jnb break
            swap:
                xchg al , dl
            break:
            mov [esi] , al
            mov [edi] , dl
            inc edi
        loop secondloop
        mov ecx , ebx
        add esi , type array
    loop myloop

    mov ecx , lengthof array
    mov esi , offset array
    printloop:
        mov al , [esi]
        call WriteChar
        inc esi
    loop printloop
    call crlf
exit
main ENDP
END main