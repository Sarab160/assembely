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
head byte "Question5:",0
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
 mov ax, 567
 call WriteHex
 call Crlf
 call WriteBin
 call crlf
 
 ror ax, 5
 mov edx, offset msg1
 Call WriteString
 call WriteHex
 call Crlf
 call WriteBin
 exit
main ENDP
END main
