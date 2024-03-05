INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
 heloMsg BYTE "My name is Hamza Ihsan." , 0
.code
main PROC
 mov edx , offset heloMsg
 call WriteString
 call Crlf
 exit
main ENDP
END main