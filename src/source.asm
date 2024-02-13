TITLE Hello World

; Name: 
; Date: 
; ID: 
; Description: 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    helloMsg BYTE "Hello, World!", 0

.code
main PROC
    mov edx, OFFSET helloMsg ; Load the address of helloMsg into edx
    call WriteString         ; Call Irvine's WriteString procedure to display the string
    call DumpRegs            ; displays registers in console
    exit                     ; Exit the program
main ENDP

END main
