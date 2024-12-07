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
    
	array dword 4,6,8,2,9,7

.code
sortarray proc
push ebp
mov ebp,esp
pushf
pusha

mov esi,[ebp+8]
mov ecx,[esi]
mov edx,[esi+12]
xchg ecx,edx
mov [esi],ecx
mov [esi+12],edx ;first swap

mov ecx,[esi+8]
mov edx,[esi+20]
xchg ecx,edx
mov [esi+8],ecx
mov [esi+20],edx ;second swap

mov ecx,[esi+16]
mov edx,[esi+20]
xchg ecx,edx
mov [esi+16],ecx
mov [esi+20],edx ;third swap

mov ecx,[esi+4]
mov edx,[esi+12]
xchg ecx,edx
mov [esi+4],ecx
mov [esi+12],edx ;fourth swap

mov ecx,[esi+8]
mov edx,[esi+12]
xchg ecx,edx
mov [esi+8],ecx
mov [esi+12],edx ;fifth swap

popf
popa
pop ebp
ret
sortarray ENDP
main PROC
	mov eax,offset array
    push eax

    call sortarray
    
    

    mov eax,array
    call writedec
    call crlf

     mov eax,array+4
    call writedec
    call crlf

     mov eax,array+8
    call writedec
    call crlf

     mov eax,array+12
    call writedec
    call crlf

     mov eax,array+16
    call writedec
    call crlf

     mov eax,array+20
    call writedec
    call crlf

	; displays registers in console

	exit

main ENDP
END main
