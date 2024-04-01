INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    str1 byte 50 DUP(?)
    str2 byte 50 DUP(?)
    n1 db "Enter the first string: ",0
    n2 db "Enter the second string: ",0
    count1 dword ?
    count2 dword ?

.code
main PROC
    ; call Crlf
    ; call Clrscr
    
    mov edx,OFFSET n1
    call WriteString

    ;taking string input
    mov edx, OFFSET str1
    mov ecx, SIZEOF str1
    call ReadString
    mov count1, eax

    mov edx,OFFSET n2
    call WriteString

    ;taking string2 input
    mov edx, OFFSET str2
    mov ecx, SIZEOF str2
    call ReadString
    mov count2, eax
    call Crlf

    mov ecx, count2
    mov esi, OFFSET str1
    mov edi, OFFSET str2
    add esi, count1
    merging:
        mov al, [edi]
        mov [esi], al
        inc edi
        inc esi
    loop merging

    mov ecx, count1
    add ecx, count2
    mov esi, offset str1
    printing:
        mov al, [esi]
        call WriteChar
        inc esi
    loop printing
    call crlf

    exit
main ENDP

END main