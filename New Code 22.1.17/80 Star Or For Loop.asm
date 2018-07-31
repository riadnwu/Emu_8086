org 100h  ;riadnwu@gmail.com
.stack 100h
.code 
 ;save cx=80
 mov cx,80  
 ;Print Star 
 mov ah,2
 mov dx,2ah
 Print:
  int 21h
  loop Print
  
 ;riadnwu@gmail.com