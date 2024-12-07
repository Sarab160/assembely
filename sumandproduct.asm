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
    num1 dword 3h
    num2 dword 4h
    num3 dword 6h
    msg1 db "calculate",0
	
.code
sumandproduct proc
push ebp
mov ebp,esp
mov edx,[ebp+8]
add edx,[ebp+12]
add edx,[ebp+16]
;product

mov esi,[ebp+8]
imul esi,[ebp+12]
imul esi,[ebp+16]

pop ebp
ret

sumandproduct ENDP
main PROC
    mov eax,num1
    mov ebx,num2
    mov ecx,num3
	push eax
    push ebx
    push ecx
    call sumandproduct
    add esp,20
    mov edx,offset msg1
    call writestring
    call DumpRegs
	exit

main ENDP
END main
