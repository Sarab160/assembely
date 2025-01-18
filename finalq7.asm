TITLE
; Name:
; Date:
; ID:
; Description:
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
head byte "Question7:",0
leftshld BYTE "Shift Left Double", 0
rightshld BYTE "Shift Right Double", 0
msg BYTE "Before Shifting: ", 0
msg1 BYTE "After Shifting: ", 0
.code
main PROC
mov edx,offset head
call writestring
call CrLf
 mov eax, 0
 mov ebx, 0
 mov edx, 0
 
 mov edx, offset leftshld
 call WriteString
 call Crlf
 mov edx, offset msg
 call WriteString
 call Crlf
 mov ax, 0ABCDh
 mov dx, ax
 call WriteHex
 call Crlf
 mov bx, 01234h
 mov ax, bx
 call WriteHex
 call Crlf
 mov ax, dx
 shl ebx, 16 
 shld eax, ebx, 16
 mov edx, offset msg1
 call WriteString
 call Crlf
 call WriteHex
 call crlf
 mov edx, offset rightshld
 call WriteString
 call Crlf
mov eax, 0
 mov ebx, 0
 mov edx, 0
 
 mov edx, offset msg
 call WriteString
 call Crlf
 mov ax, 05678h
 mov dx, ax
 call WriteHex
 call Crlf
 mov bx, 01234h
 mov ax, bx
 call WriteHex
 call Crlf
 mov ax, dx
 shl eax, 16 
 shrd eax, ebx, 16
 mov edx, offset msg1
 call WriteString
 call Crlf
 call WriteHex
 call crlf
 exit
main ENDP
END main