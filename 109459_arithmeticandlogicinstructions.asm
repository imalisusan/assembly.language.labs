org 100h

MOV CX, 712H      
MOV DX, 122H
IN AX, DX           
MOV AH, DH 
MUL DH         
ADD AX, [BX]   
DEC AX
ADC DX, AX 
IDIV DX 
TEST DX, 01H
SUB AX, [BX] 
NEG AX 
SBB CX, 74H 
DIV AX 
IMUL AX  
INC AH
AND AX, [8H]
OR CX, [102H]
XOR AH,9CH    
OUT 199,AX
RET



