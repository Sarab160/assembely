TITLE

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
inputmsg1 db "Please enter your name:",0
inputmsg2 db "Please enter your password:",0
userName db "sarab",0
password db "sarab123",0
input_userName db lengthof userName dup(0)
input_password db lengthof password dup(0)
denied_msg db "Access Denied!",0
granted_msg db "Access Granted",0mov edx,offset inputmsg1
call writestring
mov edx,offset input_userName
mov ecx,lengthof input_userName
call readstring
mov edx,offset inputmsg2
call writestring
mov edx,offset input_password
mov ecx,lengthof input_password
call readstring
mov ecx,lengthof userName
mov edx,offset input_userName
mov esi,offset userName
L1:
mov al,[edx]
cmp [esi],al
jnz DeniedLabel
inc esi
inc edx
loop L1
mov ecx,lengthof password
mov edx,offset input_password
mov esi,offset password
L2:
mov al,[edx]
cmp [esi],al
jnz DeniedLabel
inc esi
inc edx
loop L2
GrantedLabel:
mov edx,offset granted_msg
call writestring
jmp next
DeniedLabel:
mov edx,offset
.code
main PROC
	mov edx,offset inputmsg1
	call writestring
	mov edx,offset input_userName
	mov ecx,lengthof userName
	call readstring
	mov edx,offset input_password
	mov edx,offset inputmsg2
	call writestring
	mov edx,offset input_password
	mov ecx,lengthof userName
	call readstring
	mov ecx,lengthof userName-1
	mov edx,offset input_userName
	mov esi,0
L1:
	mov al,[edx]
	cmp userName[esi],al
	jnz DeniedLabel
	inc esi
	inc edx
loop L1
	mov ecx,lengthof userName-1
	mov edx,offset input_password
	mov esi,0
L2:
	mov al,[edx]
	cmp password[esi],al
	jnz DeniedLabel
	inc esi
	inc edx
loop L2
GrantedLabel:
	mov edx,offset granted_msg
	call writestring
	jmp next
DeniedLabel:
	mov edx,offset denied_msg
	call writestring
next:
    exit

main endp
End main
