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
head byte "Questoin1:",0
msg BYTE "Enter 8 bit integer ", 0
msg1 BYTE "Overflow is set ", 0
num BYTE ?
.code
main PROC
mov edx,offset head
call writestring
call CrLf
 mov edx, OFFSET msg
 call WriteString
 call ReadInt
 
 mov num , al 
 shl al, 4 
 jo Overflow
 
 movzx eax, al 
 call WriteDec 
 jmp next
 
Overflow:
 mov edx, OFFSET msg1
 call WriteString
next:
 exit
main ENDP
END main
