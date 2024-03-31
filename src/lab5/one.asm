INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
 string BYTE "Equal" , 0
 string2 BYTE "Not Equal" , 0

.code
main PROC
    call readInt
    mov ebx , eax
    call readInt
    cmp eax , ebx
    JE L1
    JNE L2
    ;-----;
    L1: 
        mov edx , OFFSET string
        call WriteString
        call Crlf
    JMP L3
    L2:
        mov edx , OFFSET string2
        call WriteString
        call crlf
    L3: 
        
exit
main ENDP

END main
