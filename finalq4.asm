TITLE

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
head byte "Question4:",0
msg BYTE "Before Rotation: ",0
msg1 BYTE "After Rotation: ",0
.code
main PROC
mov edx,offset head
call writestring
call CrLf
 mov eax, 0
 mov edx, offset msg
 Call WriteString
 mov al, 6Fh
 call WriteDec
 call Crlf
 call WriteBin
 call crlf
 
 rol al, 3
 mov edx, offset msg1
 Call WriteString
 call WriteDec
 call Crlf
 call WriteBin
 exit
main ENDP
END main