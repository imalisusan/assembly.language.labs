org 100h

MOV AX, 0000H
MOV DS, AX
MOV ES, AX  
LOD SB ;Loads a byte from a string in memory into AL
MOV SI, 2000H   
MOV DI, 2400H 
STO SW   ;Store string
MOV CX, 04H  
CDF
STO SB   ;Store string
REP MOVSB    ;Repeat string
OUT 199,AX           

RET




