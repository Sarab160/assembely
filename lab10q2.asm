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
    mystring BYTE "Hello",0

.code
Reversestring PROC
push ebp
mov ebp, esp
pushf
mov ecx, [ebp+8]
mov esi, 0
mov edi, (LENGTHOF mystring-2)

L1:
mov dh, mystring[esi]
mov dl, mystring[edi]
mov mystring[esi], dl
mov mystring[edi], dh

inc esi
dec edi
LOOP L1
popf
pop ebp
ret
Reversestring ENDP
main PROC
	mov eax, OFFSET mystring
    mov ebx, (LENGTHOF mystring)/2

    push eax
    push ebx

    CALL Reversestring
    add esp,8
    mov edx, OFFSET mystring
    call WriteString
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main