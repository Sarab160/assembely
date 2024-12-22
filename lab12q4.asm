TITLE 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
    data1 byte "Enter 1 number",0
    data2 byte "Enter 2 number",0
    data3 byte "Enter 3 number",0

    message1 byte "Number 1 is largest",0
    message2 byte "Number 2 is largets",0
    message3 byte "Number 3 is largest",0
     
     num1 dword ?
     num2 dword ?
     num3 dword ?
.code
main proc
mov edx,offset data1
call writeString
call CrLf
call readint
mov num1,eax
mov edx,offset data2
call writeString
call CrLf
call readint
mov num2,eax
mov edx,offset data3
call writeString
call CrLf
call readint
mov num3,eax
mov eax,num1
cmp eax,num2
ja l1
   mov eax,num2
   cmp eax,num3
   ja blr
 mov edx,offset message3
call writestring
jmp next
 blr:
 mov edx,offset message2
 call writestring
jmp next
  l1:
  cmp eax,num3
  ja alar

  alar:
  mov edx,offset message1
  call writestring


  next:

    exit
main ENDP

END main
