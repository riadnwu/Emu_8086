org 100h
.stack 100h
.data
     a db 0ah,0dh,"Enter Your String :$"
     b db 0ah,0dh,"Your Revers String:$"
.code
     mov ax,@data
     mov ds,ax
     
     mov cx,0
     
     lea dx,a
     mov ah,09h
     int 21h
     
     
     
 Push1:
       mov ah,1
       int 21h
       mov bl,al
       cmp bl,0dh
       je Line
       push bx
       inc cx
       jmp Push1
Line:
     lea dx,b
     mov ah,09h
     int 21h 
     
    
Pop1:
     mov ah,2 
     pop dx 
     int 21h
     loop Pop1
                         