TITLE

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
head byte "Question8:",0
beforec BYTE "Before Addition Carry Flag: ", 0
afterc BYTE "After Addition Carry Flag: ", 0
finalans BYTE "Final Answer with Addition of Carry: ", 0
.code
main PROC
mov edx,offset head
call writestring
call CrLf
 mov eax, 0
 mov ebx, 0
 mov ecx, 0
 mov eax, 0FFFFFFFFh
 mov esi, eax 
 call WriteDec 
 call Crlf
 mov ebx, 1 
 mov eax, ebx 
 call WriteDec 
 call Crlf
 mov edx, offset beforec
 call WriteString
 setc cl ; 
 mov eax, 0
 movzx eax, cl 
 call WriteDec 
 call Crlf
 mov eax, esi 
 add eax, ebx 
 setc cl 
 pushfd 
 mov edx, offset afterc
 call WriteString
 mov eax, 0
 movzx eax, cl
 call WriteDec 
 call Crlf
 mov eax, esi 
 popfd 
 adc eax, ebx 
 mov edx, offset finalans
 call WriteString
 call WriteDec 
 call Crlf
 call WriteHex
 exit
main ENDP
END main