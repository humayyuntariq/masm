INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

;100+20+(30x10x(20/2))+100-50 = 3170

.data
  
.code
main PROC
    mov edx , 0
   

    mov eax , 20
    mov ebx , 2
    div ebx 
    mov ebx , eax 
    mul 10
    mul 30
    add eax , 100
    add eax , 20
    add eax , 100  ; mul 10
    sub eax , 50
    call WriteInt
    exit
main ENDP

END main
