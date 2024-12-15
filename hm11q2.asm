TITLE 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
question2 byte "Question: 2",0
    message1 byte "jump to label 1",0
    message2 byte "Not jump to label 1",0
.code
main proc
mov edx,offset question2
call WriteString
call CrLf
 MOV al, 10111010b

	AND al, 00010000b

	JNZ Label1
	MOV edx, OFFSET message2
	Call WriteString
Label1:
	MOV edx, OFFSET message1
	Call WriteString
    exit
main ENDP

END main
