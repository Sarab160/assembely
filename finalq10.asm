TITLE

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
head byte "Question10:",0
var1 DWORD 30
var2 DWORD 20
var3 DWORD 10
var4 DWORD ?
result DB "Final result is: ", 0
.code
main PROC
 mov eax, 0
 mov ebx, 0
 mov ecx, 0
 mov edx, 0
 mov eax, var1
 call WriteDec
 call Crlf
 mov eax, var2
 call WriteDec
 call Crlf
 mov eax, var3
 call WriteDec
 call Crlf
 mov eax, var1
 mov ebx, var2
 mul ebx
 mov ecx, eax 
 mov eax, var2
 sub eax, var3 
 mov ebx, eax 
 mov eax, ecx
 div ebx
 mov edx, offset result
 call Writestring
 
 Call WriteDec
 exit
main ENDP
END main