org 100h

MOV CX, 712H      
MOV DX, 122H
IN AX, DX           ;takes the input from the port. load the port address into DX and then use IN instruction.  
MOV AH, DH           
PUSH AX             ;Set SP=SP-2
                    ;Push AX data to stack location DS:SP
POP CX              ;Load the last value stored at stack into CX which is BX  
LDS BX, [08H]          ;copies the word at the lower memory address to the Des reg and the word at the higher address to the segment reg 
                    ;increment SPby 2 i.e., SP=SP+2
XCHG AX, CX         ;Exchange words of AX and CX
XCHG AH, CL     
LEA DX,[10H]        ;loads the contents of the memory into the DX register        

LES BX,[24H] 
     
OUT 199,AX
RET



