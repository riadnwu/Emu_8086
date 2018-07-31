org 100h                           ;riadnwu@gmail.com
.stack 100h
.data
  x db 0ah,0dh,"Enter Frist Number:$"  
  y db 0ah,0dh,"Enter Second Number:$"  
  z db 0ah,0dh,"Enter Third Number:$"
  m db 0ah,0dh,"Maximum Vlue Is:$"        
  a db 0
  b db 0
  c db 0
.code
  mov ax,@data
  mov ds,ax
  
  ;Get Vlue  
  ;Frist vlue
  lea dx,x
  mov ah,09h
  int 21h
  
  mov ah,1
  int 21h
  mov bl,al  
  
  ;Second vlue 
  lea dx,y
  mov ah,09h
  int 21h
  
  mov ah,1
  int 21h
  mov b,al     
  ;Third vlue 
  lea dx,z
  mov ah,09h
  int 21h
  
  mov ah,1
  int 21h
  mov c,al  
  ;Compair Max
  lea dx,m
  mov ah,09h
  int 21h 
  
  cmp bl,b 
  jl If_Frist_Less
  mov bh,bl 
  jmp Max_Min
  cmp bl,c
  jl If_Frist_Less1  
  mov cl,bl
  jmp Max_Min  
  
  If_Frist_Less: 
   mov bh,b     
  If_Frist_Less1: 
   mov cl,c   
   
  
   Max_Min:  
    cmp bh,cl 
    jl max1
    jg max2
    je max2  
    
  
  
   max1:
     
     mov ah,2
     mov dl,cl 
     jmp END1 
   max2: 
     
    mov ah,2
     mov dl,bh
   END1:
     int 21h       ;riadnwu@gmail.com