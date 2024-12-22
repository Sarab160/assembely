INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib



.data

var1 dword 5
var2 dword 3
var3 dword 4
var4 dword ?
msg1 db "(5 + 3) * 4 = " , 0
         
.code

main PROC 
    
    mov eax , var1
    add eax , var2
    mul var3
    mov edx , offset msg1
    call writestring
    call writeInt
    exit

main ENDP
END main

