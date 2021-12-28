;save the contents of the 8086"s flags in memory location MEM1 
;and then reload the flags with the contents of memory location 
org 100h
 
STI     ;Set the interrupt flag
LAHF    ;Load current flags in AH register
MOV [08H], AH ;Save in (memory1)
MOV AH, [09H] ;Copy the contents of (memory2)
SAHF    ;Store AH into flags
CLI     ;Clear the interrupt flag

RET




