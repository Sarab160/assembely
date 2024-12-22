TITLE

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data

	MyArray BYTE 3 DUP (0)

.code

MAIN PROC
	
	MOV esi, OFFSET MyArray
	MOV ecx, 3

Input:

	Call ReadInt

	MOV [esi], al
	
	INC esi

	LOOP Input

	MOV esi, 0
	MOV edi, 1
	MOV ecx, 3
	MOV edx, 0

OuterSort:

	MOV edx, ecx
	MOV ecx, 2

	MOV esi, 0
	MOV edi, 1

InnerSort:

	MOV eax, 0
	MOV al, MyArray[esi]
	CMP al, MyArray[edi]

	JG Swap
	JMP NotSwap
Swap:
	
	MOV al, MyArray[esi]
	MOV bl, MyArray[edi]

	MOV MyArray[esi], bl
	MOV MyArray[edi], al

NotSwap:

	MOV esi, edi
	INC edi

	LOOP InnerSort

	MOV ecx, edx

	LOOP OuterSort

	MOV esi, OFFSET MyArray
	MOV ecx, 3
	MOV ebx, 1

	Call DumpMem

main endp
End main
