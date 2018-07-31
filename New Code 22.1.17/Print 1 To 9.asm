org 100h  ;riadnwu@gmail.com
.stack 100h
.code 
 ;save cx=9
 mov cx,9  
 ;Print 1 To 9 
 mov ah,2
 mov dl,31h
 Print:
  int 21h
  inc dl
  loop Print
  
 ;riadnwu@gmail.com