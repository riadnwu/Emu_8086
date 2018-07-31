org 100h                           ;riadnwu@gmail.com
.stack 100h
.data
  x db 0ah,0dh,"Enter Frist Number:$"  
  y db 0ah,0dh,"Enter Second Number:$"
  m db 0ah,0dh,"Frist Vlue Is Maximum$"
  n db 0ah,0dh,"Second Vlue Is Maximum$"  
  o db 0ah,0dh,"Frist And Second Vlue Aer Equal$"
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
  mov cl,al   
  
  ;Compair Max
  
  cmp bl,cl
  
  jg Frist_Max
  jl Second_Max
  je Equal
  
  Frist_Max:
    lea dx,m
    mov ah,09h
    int 21h
    jmp END1 
  Second_Max:
    lea dx,n
    mov ah,09h
    int 21h
    jmp END1  
  Equal:
    lea dx,o
    mov ah,09h
    int 21h  
  END1:           ;riadnwu@gmail.com