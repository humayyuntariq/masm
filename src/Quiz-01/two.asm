INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    msg1 BYTE "The product is: " , 0

.code
main PROC
    call ReadInt
    mov ebx , eax
    call ReadInt
    mul  ebx
    MOV edx , OFFSET msg1
    Call WriteString
    CALL Crlf
    call WriteInt
    call Crlf
exit
main ENDP

END main
