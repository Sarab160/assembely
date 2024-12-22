TITLE 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
message1 byte "Enter a number",0
message2 byte "The number is even",0
message3 byte "The number is odd",0
num dword ?
.code
main proc

mov edx, offset message1
call WriteString 
call CrLf
call readint
mov  num,eax
bt eax,0
jc number
mov edx,offset message2
call WriteString
jmp next
number:

mov edx,offset message3
call WriteString
next:
    exit
main ENDP

END main
