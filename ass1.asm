.model small 
.stack 100h
.data
st1 db "**************************$"
st2 db "ONLINE FORUM REGISTRATIONS$"
st3 db "**************************$"
st4 db "Name: $"
st5 db "FatherName: $"
st7 db "Gender: $"
st8 db "Age: $"
st13 db "Email: $"
st14 db "Address: $"
st9 db "City: $"
st10 db "Department: $"
st11 db "THANKYOU$" 
st12 db	"YOUR SUBMISSION HAS BEEN RECEVIED $"
 

.code

main proc
mov ax,@data
mov ds,ax

mov ah,09
lea dx, st1
int 21h

mov ah,09
lea dx,st2
int 21h

mov ah,09
lea dx, st3
int 21h

mov ah,02
mov dl, 0Ah
int 21h
           ;name
mov ah ,09
lea dx,st4
int 21h

mov ah ,02
mov dl,10
int 21h

mov ah,3fh
int 21h 

mov ah ,02    ;new line 
mov dl,0ah
int 21h 
         ;father name

mov ah,09
lea dx,st5
int 21h

mov ah ,02
mov dl,10
int 21h

mov ah, 3fh 
int 21h 

mov ah ,02    ;new line 
mov dl,0ah
int 21h 
 

              ;gender 
mov ah,09
lea dx,st7
int 21h

mov ah ,02
mov dl,10
int 21h

mov ah, 3fh 
int 21h 

mov ah ,02    ;new line 
mov dl,0ah
int 21h 

             ;age
mov ah,09
lea dx,st8
int 21h
mov ah ,02
mov dl,10
int 21h

mov ah, 3fh 
int 21h 

mov ah ,02    ;new line 
mov dl,0ah
int 21h 
           
		   ;email       
mov ah ,09
lea dx,st13
int 21h

mov ah ,02
mov dl,10
int 21h

mov ah,3fh
int 21h 

mov ah ,02    ;new line 
mov dl,0ah
int 21h 
          ;address
mov ah ,09
lea dx,st14
int 21h

mov ah ,02
mov dl,10
int 21h

mov ah,3fh
int 21h 

mov ah ,02    ;new line 
mov dl,0ah
int 21h 		  

           ;city
mov ah,09
lea dx,st9
int 21h
mov ah ,02
mov dl,10
int 21h

mov ah, 3fh 
int 21h 

mov ah ,02    ;new line 
mov dl,0ah
int 21h 

           ;department
mov ah,09
lea dx,st10
int 21h
mov ah ,02
mov dl,10
int 21h

mov ah, 3fh 
int 21h 

mov ah ,02    ;new line 
mov dl,0ah
int 21h 

           ;thanks
mov ah,09
lea dx,st11
int 21h

mov ah, 3fh 
int 21h 

mov ah ,02    ;new line 
mov dl,0ah
int 21h 

           ;received
mov ah,09
lea dx,st12
int 21h

mov ah, 3fh 
int 21h 

mov ah ,02    ;new line 
mov dl,0ah
int 21h 

mov ah,4ch
int 21h
main endp
end main