TITLE 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
message1 byte "Enter a number",0
message2 byte "Number is positive",0
message3 byte "Number is negative",0
message4 byte "Number is zero",0
value sdword ?
.code
main proc
mov edx ,offset message1
call WriteString
call CrLf
call ReadInt
mov value,eax   
mov eax,value
test eax,11111111b
jz zero
bt eax , 8
jc ifneg

mov edx , offset message2
call writeString
jmp next

ifneg:
mov edx , offset message3
call writeString
jmp next

zero:
mov edx , offset message4
call writeString
jmp next


next:


    exit
main ENDP

END main
