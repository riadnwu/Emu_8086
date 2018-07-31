

org 100h
.stack 100h
.data
     a db 0ah,0dh,"Enter Vlue:$"
     b db 0ah,0dh,"Your Vlue:$"
     c db 0ah,0dh,"Your While Looe Is Break$"   
.code
     mov ax,@data
     mov ds,ax
     mov cx,0
     
      
push1:
     lea dx,a
     mov ah,09h
     int 21h
     mov ah,1
     int 21h
     mov bl,al  
     cmp bl,0dh
     je Exit   
     lea dx,b
     mov ah,09h
     int 21h 
     mov ah,2
     mov dl,bl
     int 21h
     jmp push1   

Exit:
    lea dx,c
     mov ah,09h
     int 21h