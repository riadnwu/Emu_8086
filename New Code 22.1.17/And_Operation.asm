org 100h
.stack 100h
.data
 x db 0ah,0dh,"Enter A Vlue :$"
 y db 0ah,0dh,"Your Vlue Is In A To Z:$"
 z db 0ah,0dh,"Your Vlue Is Not A To Z:$"
 .code
    mov ax,@data
    mov ds,ax
  ;Enter Your Vlue  
  lea dx,x
  mov ah,09h
  int 21h
  
  mov ah,1
  int 21h
  mov bl,al  
  
  ;Compair
  
  cmp bl,'A'
  jge CMP1
  jmp Other
  
  CMP1:
  cmp bl,'Z'
  jle CMP2
  jmp Other 
  
  CMP2: 
      lea dx,y 
      mov ah,09h
      int 21h
      
      mov ah,2
      mov dl,bl
      int 21h 
      
      jmp END1
  Other:
      lea dx,z 
      mov ah,09h
      int 21h
      
      mov ah,2
      mov dl,bl
      int 21h    
 END1:   