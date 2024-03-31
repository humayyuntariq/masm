INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

;x = a * ( b * c  +  d * e ) + ( f + g )
.data
    
.code
main PROC
call dumpregs
   mov ax, -42
    mov bx, 26
    cmp ax, bx
    JNAE Jm
    Jm:
    call dumpregs
exit
main ENDP
END main