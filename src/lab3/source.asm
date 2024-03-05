TITLE Hello World

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    
    startMsg BYTE "Please Enter two numbers:" , 0
    firstnum BYTE "First Number: " , 0
    secondnum BYTE "Second Number: " , 0
    difference BYTE "Difference: " , 0
    sum BYTE "Sum: " , 0

.code
main PROC
call Clrscr
    ; Write a string to the console
    MOV edx , OFFSET startMsg
    Call WriteString
    CALL Crlf

    
    MOV edx , OFFSET firstnum
    Call WriteString
    CALL Crlf
    call ReadInt
    MOV ebx  , eax ; ebx = a

    MOV edx , OFFSET secondnum
    Call WriteString
    CALL Crlf
    call ReadInt
    MOV ecx , eax ; ecx = b ; eax = b
    ADD eax , ebx   ; eax = b + a

    MOV edx , OFFSET sum
    Call WriteString
    CALL WriteInt
    CALL Crlf

    MOV edx , OFFSET difference
    SUB ebx , ecx
    MOV eax , ebx
    Call WriteString
    CALL WriteInt
    CALL Crlf

    exit      ; Exit the program
main ENDP

END main
