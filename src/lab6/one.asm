INCLUDE    Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
msg byte "Please enter your marks:",0
msg1 byte "Invalid entry",0
msg2 byte "Grade A",0
msg3 byte "Grade A-",0
msg4 byte "Grade B+",0
msg5 byte "Grade B",0
msg6 byte "Grade B-",0
msg7 byte "Grade C+",0
msg8 byte "Grade C",0
msg9 byte "Grade C-",0
msg10 byte "Grade D+",0
msg11 byte "Grade D",0
msg12 byte "Grade F",0



.code
Main PROC
    mov edx, offset msg
    call writeString
    call readint
    call grade
    exit
main ENDP

grade PROC
    cmp eax,100
    JA Invalid

    cmp eax,85
    JAE gA
    cmp eax,80
    JAE gAneg
    cmp eax,75
    JAE gBplus
    cmp eax,71
    JAE gB
    cmp eax,68
    JAE gBneg
    cmp eax,64
    JAE gCplus
    cmp eax,60
    JAE gC
    cmp eax,57
    JAE gCneg
    cmp eax,53
    JAE gDplus
    cmp eax,50
    JAE gD
    cmp eax, 0
    JAE gF



    Invalid:
        mov edx, offset msg1
        call writeString
        jmp last
    gA:
        mov edx, offset msg2
        call writeString
        jmp last
    gAneg:
        mov edx, offset msg3
        call writeString
        jmp last
     gBplus:
        mov edx, offset msg4
        call writeString
        jmp last
     gB:
        mov edx, offset msg5
        call writeString
        jmp last
     gBneg:
        mov edx, offset msg6
        call writeString
        jmp last
     gCplus:
        mov edx, offset msg7
        call writeString
        jmp last
     gC:
        mov edx, offset msg8
        call writeString
        jmp last
     gCneg:
        mov edx, offset msg9
        call writeString
        jmp last
     gDplus:
        mov edx, offset msg10
        call writeString
        jmp last
     gD:
        mov edx, offset msg11
        call writeString
        jmp last
     gF:
        mov edx, offset msg12
        call writeString
        jmp last


last:
    call crlf
exit
grade ENDP

END main