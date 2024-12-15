TITLE 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
    question5 byte "Question: 5",0
     message1 byte "jump to label 3",0
    message2 byte "Not jump to label 3",0
.code
main proc
mov edx,offset question5
call WriteString
call CrLf
MOV eax, 1111111110101110b
AND eax, 1000000000000000b
jnz label3
mov edx,offset message2
call WriteString    
label3:
mov edx,offset message1
call WriteString    
	
    exit
main ENDP

END main
