
org 100h

.model small 
.data
    x db 0ah,0dh,"Enter Number:$"
    y db 0ah,0dh,"Maximu Number:$" 
.code 
 mov ax,@data
 mov ds,ax
mov cx,30h
 pus:
   lea dx,x
  mov ah,09h
  int 21h
  mov ah,1
  int 21h
  mov bl,al
  cmp bl,0dh
  je po
 
  push bx
  inc cx  
  jmp pus 
  mov ax,30h
  
 po:                
   pop bx  
   cmp bx,dx
   jl Down
   jmp Down1
   Down:
       mov bx,dx
   Down1:    
   loop po 
    
 lea dx,y
 mov ah,09h
 int 21h
 mov ah,2
 mov dx,bx
 int 21h  
      
    