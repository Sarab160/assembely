TITLE

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
head byte "Question9:",0
beforec BYTE "Before Subtraction Carry Flag: ", 0
afterc BYTE "After Subtraction Carry Flag: ", 0
resultmsg BYTE "Final Answer with Subtraction with Borrow: ", 0
.code
main PROC
 mov edx,offset head
call writestring
call CrLf
mov eax, 0
mov ebx, 0
mov ecx, 0
 
 mov ax, -1000d
 call WriteInt 
 call Crlf
 mov cx, ax
 mov bx, 2000
 mov ax, bx
 call WriteInt 
 call Crlf
 mov edx, offset beforec
 call WriteString
 setc cl 
 
 mov eax, 0
 movzx eax, cl 
 call WriteDec 
 call Crlf
 sub ax, bx 
 setc cl 
 pushfd
 
 mov edx, offset afterc
 call WriteString
 mov eax, 0
 movzx eax, cl 
 call WriteDec 
 call Crlf
 mov ax, cx
 popfd 
 sbb ax, bx 
 mov edx, offset resultmsg
 call WriteString 
 call WriteInt 
 call Crlf
 exit
main ENDP
END main
