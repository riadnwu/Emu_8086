

org 100h  ;riadnwu@gmail.com

 .data
  x db 0ah,0dh,"Enter Yoyur Number:$"
  y db 0ah,0dh,"Yoyr Number Is Prime$"
  z db 0ah,0dh,"Your Number Is Not Prime$"
 .code
  mov ax,@data
  mov ds,ax
;Enter Your Number
   lea dx,x
   mov ah,09h
   int 21h
;Input Your Number
   mov ah,1
   int 21h
   mov bl,al
;Compair Number
  cmp bl,30h
  je NOt_Prime 
  cmp bl,31h
  je NOt_Prime  
  cmp bl,32h
  je Prime 
  cmp bl,33h
  je Prime
  cmp bl,34h
  je NOt_Prime 
  cmp bl,35h
  je Prime
  cmp bl,36h
  je NOt_Prime 
  cmp bl,37h
  je Prime
  cmp bl,38h
  je NOt_Prime 
  cmp bl,39h
  je NOt_Prime  
  jmp END1
 Prime:
     lea dx,y
     mov ah,09h
     int 21h         
     jmp END1  
 NOt_Prime:
     lea dx,z
     mov ah,09h
     int 21h 
 END1:        
     
ret

 ;riadnwu@gmail.com


