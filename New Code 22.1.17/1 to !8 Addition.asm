org 100h
.stack 100h
.data
     a db 0ah,0dh,"Enter Your Frist Vlue :$" 
     b db 0ah,0dh,"Enter Your Second Vlue :$"
     c db 0ah,0dh,"Your Addition:$"
.code
     mov ax,@data
     mov ds,ax
     
     lea dx,a
     mov ah,09h
     int 21h
     
     mov ah,1
     int 21h
     sub al,48
     mov bh,al
     
     lea dx,b
     mov ah,09h
     int 21h
     
     mov ah,1
     int 21h
     sub al,48 
     
     add al,bh
     mov ah,0
     aaa
     add ah,48
     add al,48
     mov bx,0 
     mov bx,ax
     
     lea dx,c
     mov ah,09h
     int 21h
     
     mov ah,2
     mov dl,bh
     int 21h 
     
     mov ah,2
     mov dl,bl
     int 21h 
ret  