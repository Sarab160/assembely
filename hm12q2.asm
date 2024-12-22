INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib



.data

var1 dword 15
var2 dword 5
var3 dword ?

msg2 db "(15 * 2) / (5 - 3) = " , 0
         
.code

main PROC 
    
    mov eax , var2
    sub eax , 3
    mov ebx , eax
    mov eax , 2
    mul var1
    DIV ebx
    mov edx , offset msg2
    call writestring
    call writeInt
    exit

main ENDP
END main
