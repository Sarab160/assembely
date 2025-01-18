TITLE

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
head byte "Question6:",0
left BYTE "left rotation with carry", 0
right BYTE "RIGHT rotation with carry", 0
cflag BYTE "Carry Flag: ", 0
msg BYTE "Before Rotation: ", 0
msg1 BYTE "After Rotation: ", 0
.code
main PROC
 mov edx,offset head
call writestring
call CrLf
 mov eax, 0
 mov ebx, 0
 mov edx, offset left
 call WriteString
 call Crlf
 mov edx, offset msg
 call WriteString
 mov bx, 0AAAAh
 mov ax, bx
 call WriteHex
 call Crlf
 call WriteBin
 call crlf
 mov edx, offset cflag
 call WriteString
 
 setc cl 
 mov eax, 0
 movzx eax, cl
 call WriteDec
 rcl bx, 1
 setc cl 
 call Crlf
 mov edx, offset msg1
 call WriteString
 mov ax, bx
 call WriteHex
 call Crlf
 call WriteBin
 call Crlf
 mov edx, offset cflag
 call WriteString
 mov eax, 0
 movzx eax, cl
 call WriteDec
 call Crlf
 mov eax, 0
 mov ebx, 0
 mov edx, offset right
 call WriteString
 call Crlf
 mov edx, offset msg
 call WriteString
 mov bx, 0AAABh
 mov ax, bx
 call WriteHex
 call Crlf
 call WriteBin
 call crlf
 mov edx, offset cflag
 call WriteString
 
 setc cl 
 mov eax, 0 
 movzx eax, cl
 call WriteDec
 rcr bx, 1
 setc cl 
 call Crlf
 mov edx, offset msg1
 call WriteString
 mov ax, bx
 call WriteHex
 call Crlf
 call WriteBin
 call Crlf
 mov edx, offset cflag
 call WriteString
 mov eax, 0
 movzx eax, cl
 call WriteDec
 call Crlf
 exit
main ENDP
END main