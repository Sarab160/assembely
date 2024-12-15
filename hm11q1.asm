TITLE 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib


INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    question1 byte "Question: 1",0
    messag1      byte "Press 1 to Enter a new string", 0
    message2     byte "Press 2 to Enter an Encryption Key", 0
    mesage3      byte "Press 3 to encrypt a string", 0
    message4     byte "Press 4 to decrypt a string", 0
    message5     byte "Press 0 to close the program", 0

    mesg         byte "Enter a string: ", 0
    mesg1        byte "Enter an Encryption key: ", 0
    mesg2        byte "Encrypted string: ", 0
    mesg3        byte "Decrypted string: ", 0

    string       byte 100 dup(0)    
    key          byte 0             
    encrypted    byte 100 dup(0)    

.code


menupr proc
    mov edx, offset messag1
    call WriteString
    call CrLf

    mov edx, offset message2
    call WriteString
    call CrLf

    mov edx, offset mesage3
    call WriteString
    call CrLf

    mov edx, offset message4
    call WriteString
    call CrLf

    mov edx, offset message5
    call WriteString
    call CrLf

    ret
menupr ENDP

main proc
    mov edx,offset question1
    call WriteString
    call CrLf
    call menupr

menu:  
    
    call ReadInt   
    
    cmp eax, 0    
    je endprogram

    cmp eax, 1   
    je enterstring
    cmp eax, 2   
    je encryptionkey
    cmp eax, 3    
    je encryptstring
    cmp eax, 4    
    je decryptstring

    jmp menu      

enterstring:
   
    mov edx, offset mesg
    call WriteString
    call ReadString
    jmp menu

encryptionkey:
   
    mov edx, offset mesg1
    call WriteString
    call ReadInt
    mov key, al   
    jmp menu

encryptstring:
   
    mov esi, offset string
    mov edi, offset encrypted
    mov al, byte ptr key

encryptloop:
    mov al, byte ptr [esi]   
    cmp al, 0               
    je encryptdone
    xor al, byte ptr key   
    mov byte ptr [edi], al   
    inc esi
    inc edi
    jmp encryptloop

encryptdone:
    
    mov edx, offset mesg2
    call WriteString
    mov edx, offset encrypted
    call WriteString
    jmp menu

decryptstring:
    
    mov esi, offset encrypted
    mov edi, offset string
    mov al, byte ptr key

decryptloop:
    mov al, byte ptr [esi]   
    cmp al, 0                
    je decryptdone
    xor al, byte ptr key     
    mov byte ptr [edi], al   
    inc esi
    inc edi
    jmp decryptloop

decryptdone:

    mov edx, offset mesg3
    call WriteString
    mov edx, offset string
    call WriteString
    jmp menu

endprogram:

    exit
main ENDP

END main
