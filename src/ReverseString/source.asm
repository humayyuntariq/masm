INCLUDE    Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

;x = a * ( b * c  +  d * e ) + ( f + g )
.data
    aName    BYTE "ABRACADABRA", 0
    nameSize DWORD LengthOf aName
.code
main PROC
    mov ecx, nameSize
    sub ecx, 1
    mov esi, 0
    L1:
        mov eax, aname[ebx + esi] ; get character
        push  eax
        call writechar
        inc   esi
    loop L1

    mov ecx, nameSize
    mov esi, 0

    L2:
        pop eax
        mov aName[esi], al ; store in string
        inc esi
    loop L2
   
    mov  edx, OFFSET aName ; Display the name.
    call crlf
    call WriteString
exit
main ENDP
END  main