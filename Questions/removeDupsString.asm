INCLUDE    Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
    string BYTE 50 dup(?)
    sizea DWORD ?
.code
main PROC
    call inputString

    mov ecx , sizea
    mov esi , offset string
    myloop:
    push ecx
    push esi
        mov al, [esi]
            sloop:
                    inc esi
                cmp al, [esi]
                je remove
                jmp move_next

                 remove:
                push ecx
                 mov edi, esi
                inside_loop:
                    mov bl, [esi+1]
                    mov [esi], bl
                    inc esi
                loop inside_loop
                pop ecx
                 mov esi, edi
                 move_next:
                
            loop sloop
    pop esi
    inc esi
    pop ecx
    loop myloop

    mov ecx , sizea
    ; tloop:
    ;     pop eax
        
    ;     call WriteInt
    ; loop tloop
    call outputString
    call crlf
exit
main ENDP

inputString PROC
    mov  edx, offset string
    mov  ecx, sizeof string
    call ReadString
    mov sizea, eax
ret
inputString ENDP

outputString PROC
    mov  edx, offset string
    call WriteString
ret
outputString ENDP

END main
