INCLUDE    Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    array1 DWORD 1 , 2 ,3 , 4 , 5 , 6 , 7 , 8 , 9 , 10
    array2 DWORD ?
    string BYTE "Numbers should be greater than:", 0
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
        JG L1
        JNG  break
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
