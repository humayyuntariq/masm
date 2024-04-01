INCLUDE    Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    array DWORD 1 , 2 , 6 , 4 , 6
.code
main PROC
    mov ecx, lengthof array
    mov esi, offset array
    myloop:
        mov eax, [esi]
        mov ebx, ecx
        mov ecx, 5
        mov edi, offset array
        sloop:
            cmp ebx, ecx
            je  break
                cmp eax, [edi]
                je  delete
                jne break
                delete:
                    mov eax,   0
                    mov [esi], eax
               
            break:
                add edi, 4
        loop sloop
        mov  ecx, ebx
        add  esi, 4
    loop myloop

    mov ecx, lengthof array
    mov esi, offset array
    dloop:
        ; pop eax
        mov  eax, [esi]
        call WriteInt
        add  esi, 4
    loop dloop
exit
main ENDP

; function PROC

; exit 
; function ENDP

END  main