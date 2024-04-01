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

    mov ecx , eax
    mov sizea , eax
    mov esi , offset string
    myloop:
        mov al, BYTE PTR [esi]
        ; call WriteChar
        mov edi , offset string
        mov ebx , ecx
        mov ecx , sizea
            sloop:
                cmp  ecx , ebx
                je break
                    cmp al, BYTE PTR [edi]
                    je  delete
                    jne break
                    delete:
                    mov al,   'x'
                    mov [edi], al
                break:
                    add edi, 1
            loop sloop
        mov ecx , ebx
        add esi , 1
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
ret
inputString ENDP

outputString PROC
    mov  edx, offset string
    call WriteString
ret
outputString ENDP

END main