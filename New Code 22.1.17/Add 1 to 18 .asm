org 100h    ;riadnwu@gmail.com
.stack 100h
.data
 x db 0ah,0dh,"Enter Yoyr Frist Number:$"
 y db 0ah,0dh,"Enter Yoyr Second Number:$"
 z db 0ah,0dh,"Addition Of Number:$" 
.code
mov ax,@data
mov ds,ax
;Print Frist Number
   lea dx,x
   mov ah,09h
   int 21h 
;enter  First Number 
   mov ah,1
   int 21h  
   sub al,48
   mov bl,al 
;Print Second Number
  lea dx,y
  mov ah,09h
  int 21h
;Enter Second Number 
  mov ah,1
  int 21h
  sub al,48
;Addition Two Number
  add al,bl
  mov ah,0
  aaa
  add ah,48
  add al,48 
  mov bx,0
  mov bx,ax
;Print Answer
  lea dx,z
  mov ah,09h
  int 21h
;Print Adduition Number 
  mov ah,2
  mov dl,bh
  int 21h 
  mov ah,2 
  mov dl,bl
  int 21h        

ret

;riadnwu@gmail.com


