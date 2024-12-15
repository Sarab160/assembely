TITLE 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
    question6 byte "Question; 6",0
    message1 byte "jump to label 4",0
    message2 byte "Not jump to label 4",0
.code
main proc
mov edx,offset question6
call WriteString
call CrLf
mov ebx,0
mov ecx,0
mov ebx,5
mov ecx,3
cmp ebx,ecx
ja label4
mov edx,offset message2
call WriteString
label4:
mov edx,offset message1
call WriteString

    exit
main ENDP

END main
