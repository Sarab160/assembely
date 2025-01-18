TITLE 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
   
.code
main proc

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

    exit
main ENDP

END main
