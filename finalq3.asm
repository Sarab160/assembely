TITLE

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
head byte "Question3:",0
.code
main PROC
 mov edx,offset head
call writestring
call CrLf
mov eax, 0
 mov al, 7Dh
 call WriteDec
 call Crlf
 call WriteBin
 call Crlf
 shr al, 1
 call WriteDec
 call Crlf
 call WriteBin
 call Crlf
 call Crlf
 mov al, 7Dh
 call WriteDec
 call Crlf
 call WriteBin
 call Crlf
 shl al, 3
 call WriteDec
 call Crlf
 call WriteBin
 call Crlf
 call Crlf
 mov al, 92h
 call WriteDec
 call Crlf
 call WriteBin
 sar al, 1
 call Crlf
 call WriteDec
 call Crlf
 call WriteBin
 call Crlf
 call Crlf
 mov al, 92h
 call Crlf
 call WriteDec
 call Crlf
 call WriteBin
 sal al, 3
 call Crlf
 call WriteDec
 call Crlf
 call WriteBin
 exit
main ENDP
END main