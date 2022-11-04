addm macro num1,num2
mov ax,num1
add ax,num2
mov res,ax     
endm
.model small 
.data
num1 dw 1234H
num2 dw 1000H
res dw ?
.code
mov ax,@data
mov ds,ax 
addm num1,num2     
mov ah,4ch
int 21H  
ends
End