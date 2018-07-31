org 100h;riadnwu@gmail.com
.stack 100h
.data
  x db 0ah,0dh,"Enter Frist Number:$"
  y db 0ah,0dh,"Enter Second Number:$"
  z db 0ah,0dh,"Addition Of Two Number:$"
.code
  mov ax,@data
  mov ds,ax
;Print Frist Number
  lea dx,x
  mov ah,09h
  int 21h
;Input Frist Number
  mov ah,1
  int 21h
  mov bl,al
;Print Secod Number
  lea dx,y
  mov ah,09h
  int 21h  
;Input Second Number
  mov ah,1
  int 21h
  mov cl,al
;Addition
  add bl,cl
  sub bl,48 
;Print Anser
  lea dx,z
  mov ah,09h
  int 21h
;print Main Answer  
  mov ah,2
  mov dl,bl
  int 21h            


ret

;riadnwu@gmail.com


