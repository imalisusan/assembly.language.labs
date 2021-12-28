org 100h

MOV AL, 11H
MOV AX, 22H      
CMP AL, BX 
JE L1  ;If AH and CH are equal
JB L2  ;If AH is less than CH
JA L3  ;If AH is greater than CH    
JAE L4 ;If above or equal
JBE L5 ;If below or equal  
JC L6  ;If carry
JNC L7 ;If not carry
JNE L8 ;If not even
JNZ L9 ;If not zero
JPE L10;If parity even
JPO L11;If parity odd


    L1:  
    MOV AL,09H
    RET  
    
    L2:
    MOV AL,29H
    RET               
    
    L3:
    MOV BX,09H
    RET
        
    L4:
    MOV BX,29H
    RET
    
    L5:
    MOV AL,39H
    RET
    
    L6:
    MOV BX,39H
    RET
    
    L7:
    MOV AL,49H
    RET
    
    L8:
    MOV BX,49H
    RET
    
    L9:
    MOV AL,59H
    RET
    
    L10:
    MOV BX,59H
    RET
    
    L11:
    MOV AL,69H
    RET

LOOP AL L1
JMP EXIT   
RET




