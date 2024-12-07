TITLE 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

INCLUDELIB kernel32.lib
INCLUDELIB user32.lib
.data
    array DWORD 10 DUP(0)  

.code


Fibonacci PROC
    
    push ebp
    mov ebp, esp
    pushf
    pusha

    mov ecx, [ebp + 8]  
    mov esi, [ebp + 12]
	mov eax,0
	mov ebx,1
    mov [esi],eax     
    mov [esi + 4],ebx

    mov eax, [esi + 4]  
    mov ebx, [esi]      
    add eax, ebx       
    mov [esi + 8], eax  

    mov eax, [esi + 8]  
    mov ebx, [esi + 4] 
    add eax, ebx        
    mov [esi + 12], eax 
    mov eax, [esi + 12] 
    mov ebx, [esi + 8]  
    add eax, ebx        
    mov [esi + 16], eax 
    mov eax, [esi + 16] 
    add eax, ebx       
    mov [esi + 20], eax 
  
    mov ebx, [esi + 16] 
    add eax, ebx        
    mov [esi + 24], eax

    mov eax, [esi + 24] 
    mov ebx, [esi + 20] 
    add eax, ebx        
    mov [esi + 28], eax 

    mov eax, [esi + 28] 
    mov ebx, [esi + 24] 
    add eax, ebx        
    mov [esi + 32], eax

   
    mov eax, [esi + 32] 
    mov ebx, [esi + 28]
    add eax, ebx       
    mov [esi + 36], eax 

    
    popa
    popf
    pop ebp
    ret 

Fibonacci ENDP

main PROC
    
    mov eax, 10         
    mov ecx, OFFSET array  

    push ecx
    push eax

    call Fibonacci
    add esp,8
    mov eax, [array]   
    call Writedec      
    call Crlf

    mov eax, [array+4]  
    call Writedec     
    call Crlf

    mov eax, [array+8]  
    call Writedec     
    call Crlf

    mov eax, [array+12] 
    call Writedec      
    call Crlf

    mov eax, [array+16] 
    call Writedec      
    call Crlf

    mov eax, [array+20] 
    call Writedec     
    call Crlf

    mov eax, [array+24] 
    call Writedec       
    call Crlf

    mov eax, [array+28]
    call Writedec      
    call Crlf

    mov eax, [array+32] 
    call Writedec       
    call Crlf

    mov eax, [array+36] 
    call Writedec     
    call Crlf

    exit
main ENDP

END main
