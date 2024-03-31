INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    string BYTE "abracadabra" , 0
.code
main PROC
    mov esi, OFFSET string
    mov ecx , LENGTHOF string
    myloop:
        and BYTE PTR [esi], 11011111b
        inc esi
    loop myloop
    mov edx , OFFSET string
    call WriteString
exit
main ENDP

END main

;01000001 A
;00100000 or

;01100001 a