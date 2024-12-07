TITLE 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
    
.code
main proc

 call dumpregs



    exit
main ENDP

END main
