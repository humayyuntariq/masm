TITLE Hello World

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    msg1 BYTE "CF and SF are 1" , 0
    msg2 BYTE "ZF is 1 " , 0
    msg3 BYTE "Clear all Flags " , 0
.code
main PROC 
    MOV edx , OFFSET msg1
    Call WriteString
    CALL Crlf
    mov al,255
    add al,1    ; CF = 1 bit size overflow
    mov bl , 10
    sub bl , 11 ; SF = 1 on negative sign
    call dumpregs 
    call Crlf   


    MOV edx , OFFSET msg2
    Call WriteString
    CALL Crlf
    mov cl , 10
    sub cl , 10 ; ZF = 1 overall value is zero
    call dumpregs 
    call Crlf

    MOV edx , OFFSET msg3
    Call WriteString
    CALL Crlf
    sub al,1
    mov bl,10
    add bl,11
    call dumpregs 
    call Crlf

    exit
main ENDP

END main
