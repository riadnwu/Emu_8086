org 100h       ;riadnwu@gmail.com
.stack 100h
.data
 x db 0ah,0dh,"Enter Your String:$"
 y db 0ah,0dh,"Your Revers_String:$"
.code
 mov ax,@data
 mov ds,ax

   mov cx,0
 ;Print Your Number
   lea dx,x
   mov ah,09h
   int 21h
 ;Input Your Number
 Push1:            
   mov ah,1
   int 21h
   mov bl,al
   ;compair Number
     cmp bl,0dh
     je Print
     push bx
     inc cx
     jmp Push1  
  ;Print Revarse Number   
Print:
    lea dx,y
    mov ah,09h
    int 21h 
    mov ah,2
Pop1:
     pop dx
     int 21h
     loop Pop1        
           
 ;riadnwu@gmail.com 