org 100h                   ;riadnwu@gmail.com
.stack 100h 
.data
 y db 0ah,0dh,"Your Input Is Positive$" 
 x db 0ah,0dh,"Your Input Is Negative$"
 z db 0ah,0dh,"Your Input Is Zero$"
.code 
 mov ax,@data
 mov ds,ax
 
 mov ah,1
 int 21h
 mov bl,al
 
 ;Condition
 cmp bl,30h
 jl Negative
 jg Posative
 je Zero
 
 Negative:
     lea dx,x
     mov ah,09h
     int 21h
     jmp END1   
 Posative:
     lea dx,y
     mov ah,09h
     int 21h
     jmp END1
 Zero:
     lea dx,z
     mov ah,09h
     int 21h
 END1:  
;riadnwu@gmail.com   