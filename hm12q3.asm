INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib



.data

msg3 db "(50 * 20) / -35 = " , 0
var1 SDWORD -35      
var2 SDWORD 50      
var3 SDWORD 20       
.code

main PROC 
    
   mov eax, var1        
    mov ecx, var2        
    mov edx, var3        

    ; Save ECX and EDX
    push ecx
    push edx

    ; Perform the computation: eax = (ecx * edx) / eax
    pop edx              ; Restore EDX (var3)
    pop ecx              ; Restore ECX (var2)
    imul ecx, edx        ; ECX = ECX * EDX (var2 * var3)

    ; Handle division
    xchg eax, ecx        ; Swap EAX and ECX, so ECX contains var1
    cdq                  ; Sign-extend EAX into EDX:EAX
    idiv ecx             ; Perform signed division (ECX is now the divisor)

    ; Display the result
    mov edx, OFFSET msg3 
    call WriteString     
    call WriteInt             
    
main ENDP
END main




