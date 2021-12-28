
org 100h
               
MOV CX, 712H      
MOV DX, 122H
IN AX, DX           
MOV AH, DH 
SHR AX, 2  ;Shift right
SAR CX, 5  ;Shift arithmetic right
SHL DX, 2  ;Shift left  
SAL CL, 2  ;Shift arithmetic left
ROL AH, 4  ;Rotate left
ROR AH, 4  ;Rotate right
RCL CH, 1  ;Rotate carry left
RCR BH, 6  ;Rotate carry right 
OUT 199,AX
RET




MOV DX, 10100B
IN AX, DX  
SHL DX, 2   
OUT 199,AX
HLT