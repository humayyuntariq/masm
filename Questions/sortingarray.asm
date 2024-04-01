INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
    array DWORD 50 dup(0)
    msg1 BYTE "Enter the number of elements: " , 0
    msg2 BYTE "Enter the number: " , 0
    arraysize DWORD ?
    temp DWORD ?
.code
main PROC
    call input

    mov ecx , arraysize 
    mov esi , offset array
    sub arraysize , 1
    firstloop:
        mov ebx , ecx
        mov ecx , arraysize
        mov edi , offset array
        secondloop:
            mov eax , [edi]
            mov edx , [edi+4]
            cmp eax , edx
            ja replace
            jna break
            replace:
                xchg eax , edx
            break:
                mov [edi]  , eax
                mov [edi + 4] , edx
                add edi , type array
        loop secondloop
        mov ecx , ebx
        add esi , type array
    loop firstloop

   call output
   call crlf
exit
main ENDP
input PROC
  mov edx , offset msg1
    call WriteString
    call ReadInt
    mov arraysize , eax
    mov ecx , eax
    mov esi , offset array
    inputloop:
        mov edx , offset msg2
        call WriteString
        call ReadInt
        mov [esi] , eax
        add esi , type array
    loop inputloop
    ret
    input ENDP

output PROC
    add arraysize , 1
    mov ecx , arraysize
    mov esi , offset array
    outputloop:
        mov eax , [esi]
        call WriteInt
        add esi , type array
    loop outputloop
    ret
    output ENDP


END main