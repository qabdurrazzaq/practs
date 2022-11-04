.model small
.data
num1 dw 1234H
num2 dw 1000H
res dw ?
.code
mov ax,@data
mov ds,ax  
call addproc    
    
mov ah,4ch
int 21H  
proc addproc
mov ax,num1
add ax,num2
mov res,ax     
ret
endp
ends
End