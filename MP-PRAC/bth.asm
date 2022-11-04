;bcd to hex
.model small
.data
Var DW 0172d
.code
;Initlize Data Segment
mov ax,@DATA
mov DS,ax
mov bx,Var
mov al,bh
mov ah,00h
mov cl,10h
div cl
mov dh,ah
mov cl,al
CALL PRINT
mov dl,dh
mov cl,dl
CALL PRINT
mov al,bl
mov ah,00h
mov cl,10h
div cl
mov dh,ah
mov cl,al
CALL PRINT
mov cl,dh
CALL PRINT
;to terminate program
mov ah, 4ch
int 21h
ret
PRINT PROC ;print procedure to print
;number
cmp cl,09
jle ad
add cl,07h ;if less than 9 ,add 30h

ad: add cl,30h ;if greater than 9,add 37h
mov dl,cl
mov ah,02h
int 21h
ret
PRINT ENDP   
Ends
End


;output : 00AC