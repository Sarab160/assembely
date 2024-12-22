TITLE

; Name: 
; Date: 
; ID: 
; Description: 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib


INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
num90 DB "Your Grade is A",0
num80 DB "Your Grade is B",0
num70 DB "Your Grade is C",0
num60 DB "Your Grade is D",0
num50 DB "Your Grade is F",0
enternum DB "Enter a number between 1 and 100: ", 0

num DD ?
.code
main PROC
    
    mov edx, offset enternum
    call WriteString
    call ReadInt
    mov num, eax

    cmp eax,90
    jae above90

    cmp eax,80
    jae above80

     cmp eax,70
    jae above70

     cmp eax,60
    jae above60

    cmp eax,0
    jae below60

above90:

    mov edx, offset num90
    call writeString
    jmp next

above80:
    mov edx, offset num80
    call writeString
    jmp next

above70:
    mov edx, offset num70
    call writeString
    jmp next

   above60:
    mov edx, offset num60
    call writeString
    jmp next

    below60:
    mov edx, offset num50
    call writeString

next:
	exit

    main endp
END main
