
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  

JMP start

msg: db "Hello, World!", 0Dh, 0Ah, 24h
start:
    MOV DX, msg
    MOV AH, 09h
    INT 21h
    MOV AH, 0
    INT 16h

RET




