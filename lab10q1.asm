TITLE 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
    num dword 7
    num2 dword 3
.code
sum proc
push ebp
mov ebp,esp
mov ecx,[ebp+12]
mov edx,[ebp+8]
add ecx,edx
pop ebp
ret

sum Endp

main proc
mov eax,num
mov ebx,num2
push eax
push ebx
call sum
add esp,12
 call dumpregs



    exit
main ENDP

END main
