TITLE 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
    question3 byte "Question: 3",0
     message1 byte "jump to label 1",0
    message2 byte "Not jump to label 1",0
.code
main proc
    mov edx,offset question3
    call WriteString
    call CrLf
    MOV al, 10111010b
	AND al, 00111000b
	CMP al, 00111000b
  je label1
   mov edx,offset message2
   call WriteString
   label1:
   mov edx,offset message1
   call WriteString



    exit
main ENDP

END main
