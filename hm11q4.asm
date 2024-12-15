TITLE 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
    question4 byte "Question: 4",0
    message1 byte "jump to label 2",0
    message2 byte "Not jump to label 2",0
.code
main proc
mov edx,offset question4
call WriteString
call CrLf
mov al,0
ADD al, 01010101b
jp label1
mov edx,offset message2
call WriteString
label1:
mov edx,offset message1
call WriteString

    exit
main ENDP

END main
