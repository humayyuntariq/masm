INCLUDE    Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    array1 SDWORD -1 , -2 , -3 , 4 , 5 , 6
    array2 SDWORD ?
    string BYTE "Numbers should be less or equal than:", 0
.code
main PROC
    mov  ecx, LENGTHOF array1
    mov  esi, offset array1
    mov  edi, offset array2
    mov  edx, OFFSET string
    call WriteString
    call readInt
    mov  ebx, eax
    mov  edx, 0
    firstloop:
        mov eax, [esi]
        add esi, 4
        cmp eax, ebx
        JLE L1
        JG  break
        L1:
            mov [edi], eax
            add edi,   4
            inc edx
        break:
    loop firstloop

    mov ecx, edx
    cmp edx, 0
    je  break2
    mov edi, offset array2
    secondloop:
        mov  eax, [edi]
        add  edi, 4
        call WriteInt
    loop secondloop
    break2:
    call crlf
exit
main ENDP

END  main
