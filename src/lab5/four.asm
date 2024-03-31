;Write a program to access and print the string array 
;using base index mode.

INCLUDE    Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
array      BYTE "Abracadabra", 0
  .code
main PROC

    mov  ecx, lengthof array
    sub  ecx, 1
    mov  ebx, offset array
    mov  esi, 0
    L1:
    mov  eax, [ebx + esi]
    push eax

    inc  esi
    loop L1
    
    call crlf

    mov  ecx, lengthof array
    sub  ecx, 1
    mov  ebx, offset array
    mov  esi, 0
    L2:
        pop eax
        mov [ebx + esi] , eax
        inc  esi
    loop L2

    mov  edx, OFFSET array ; Display the name.
    call crlf
    call WriteString
    call crlf


    exit
main ENDP

END  main