INCLUDE    Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    buffer    BYTE 50 dup(?)
    byteCount DWORD ?
.code
main PROC
    mov  edx,       offset buffer
    mov  ecx,       (sizeof buffer)
    call ReadString
    mov  byteCount, eax             ;returns the number of chrachter of input
    mov  ecx,       byteCount
    mov  esi,       OFFSET buffer   ; moving string[0] to esi

    myloop:
        mov al, BYTE PTR [esi]
        cmp al, 'a'
        jae tocapital
        jb  tosmall
        tocapital:
            and al, 11011111b
            jmp break
        tosmall:
            or al , 00100000b
        break:
        mov [esi] , al
        inc esi
    loop myloop

    mov edx , OFFSET buffer
    call WriteString
    call crlf
exit
main ENDP

END  main

