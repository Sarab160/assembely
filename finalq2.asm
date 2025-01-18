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
head byte "Question2:",0
msg BYTE "Enter a 16 bit integer ", 0
msg1 BYTE "Quotient: ", 0
num WORD ?
.code
main PROC
mov edx,offset head
call writestring
call CrLf
 mov edx, OFFSET msg
 call WriteString
 call ReadInt
 
 mov num , ax
 shr ax, 1 
 
 mov edx, offset msg1
 call WriteDec 
 call Crlf
 
 exit
main ENDP
END main