INCLUDE    Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    bufferString BYTE 50 dup(?)
.code
main PROC
    repeaty:
    mov  edx, offset bufferString
    mov  ecx, sizeof bufferString
    call ReadString
    call writeInt
    mov  ecx, eax
    mov  esi, OFFSET bufferString
    myloop:
        mov al, [esi]
        cmp al, 'A'
        jb repeaty
        cmp al , 'Z'
        ja gap
        jb endi
        gap:
            cmp al , 'a'
            jb repeaty
            cmp al , 'z'
            ja repeaty
        endi:
        inc esi
    loop myloop
exit
main ENDP

END  main

;01000001 A
;00100000 or

;01100001 a