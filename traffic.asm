
.model small

.data

    a DB "This is a traffic lights operator $"    
    
    b DB "First street cycle finished $"   
    
    c DB "Second street cycle finished $"
    
    d DB "Third street cycle finished $"  
    
    e DB "Fourth street cycle finished $"

    n_line DB 0AH,0DH,"$"   ;for a new line

.code
    MOV AX,@data
    MOV DS, AX
                          
    ;Displaying a             
    LEA DX,a
    MOV AH,09H
    INT 21H
    ;print new line  
    LEA DX,n_line 
    MOV AH,9
    INT 21H 
    
    #start=Traffic_Lights.exe#
    
    name "traffic_controller"
    
    yellow_and_green equ      0000_0110b
    red              equ      0000_0001b
    yellow_and_red   equ      0000_0011b
    green            equ      0000_0100b
    
    all_red          equ      0010_0100_1001b
    
    start:
    NOP
    
    ; 0,1,2
    
    MOV AX, green
    OUT 4, AX
    
    MOV AX, yellow_and_green 
    OUT 4, AX
    
    MOV AX,red
    OUT 4, AX  
     
    ; wait1 seconds 
    MOV     CX, 000FH    ;000F4240H = 1,000,000
    MOV     DX, 4240H
    MOV     AH, 86h
    INT     15H 
    
    MOV AX, yellow_and_red
    OUT 4, AX
    
    ; wait 2 seconds 
    MOV     CX, 001EH    ;004C4B40h = 2,000,000
    MOV     DX, 8480H
    MOV     AH, 86h
    INT     15H
     
    ;print new line  
    LEA DX,n_line 
    MOV AH,9
    INT 21H       
    ;Displaying b             
    LEA DX,b
    MOV AH,09H
    INT 21H           
              
      
    ; 3,4,5
    
    MOV AX, green << 3
    OUT 4, AX
    
    MOV AX, yellow_and_green << 3
    OUT 4, AX
    
    MOV AX,red << 3
    OUT 4, AX 
     
    ; wait1 seconds 
    MOV     CX, 000FH    
    MOV     DX, 4240H
    MOV     AH, 86h
    INT     15H 
    
    MOV AX, yellow_and_red << 3
    OUT 4, AX
    
    MOV     CX, 001EH    
    MOV     DX, 8480H
    MOV     AH, 86h
    INT     15H
     
    ;print new line  
    LEA DX,n_line 
    MOV AH,9
    INT 21H 
    ;Displaying c             
    LEA DX,c
    MOV AH,09H
    INT 21H           
              
                            
    ; 6,7,8
    
    MOV AX, green << 6
    OUT 4, AX
    
    MOV AX, yellow_and_green << 6
    OUT 4, AX
    
    MOV AX,red << 6
    OUT 4, AX 
    
    ; wait1 seconds 
    MOV     CX, 000FH    
    MOV     DX, 4240H
    MOV     AH, 86h
    INT     15H 
    
    MOV AX, yellow_and_red << 6
    OUT 4, AX
    
    MOV     CX, 001EH    ; 
    MOV     DX, 8480H
    MOV     AH, 86h
    INT     15H
    
    ;print new line  
    LEA DX,n_line 
    MOV AH,9
    INT 21H  
    ;Displaying d             
    LEA DX,d
    MOV AH,09H
    INT 21H           
              
    
    ; 9,A,B
    
    MOV AX, green << 9
    OUT 4, AX
    
    MOV AX, yellow_and_green << 9
    OUT 4, AX
    
    MOV AX,red << 9
    OUT 4, AX 
    
    ; wait1 seconds 
    MOV     CX, 000FH    
    MOV     DX, 4240H
    MOV     AH, 86h
    INT     15H 
    
    MOV AX, yellow_and_red << 9
    OUT 4, AX
    
    MOV     CX, 001EH   
    MOV     DX, 8480H
    MOV     AH, 86h
    INT     15H 
    
    ;print new line  
    LEA DX,n_line 
    MOV AH,9
    INT 21H
    ;Displaying e             
    LEA DX,e
    MOV AH,09H
    INT 21H           
              
    ; C,D,E
    
    MOV AX, green << C
    OUT 4, AX
    
    MOV AX, yellow_and_green << C
    OUT 4, AX
    
    MOV AX,red << C
    OUT 4, AX 
    
    ; wait1 seconds 
    MOV     CX, 000FH    
    MOV     DX, 4240H
    MOV     AH, 86h
    INT     15H 
    
    MOV AX, yellow_and_red << C
    OUT 4, AX
    
    MOV     CX, 001EH   
    MOV     DX, 8480H
    MOV     AH, 86h
    INT     15H 
    
    ;print new line  
    LEA DX,n_line 
    MOV AH,9
    INT 21H
    ;Displaying e             
    LEA DX,e
    MOV AH,09H
    INT 21H           
             
      
    ; all
    
    MOV AX, all_red
    OUT 4, AX
    
    MOV AX, all_red << 1  ; all yellow
    OUT 4, AX
    
    MOV AX, all_red << 2  ; all green :)
    OUT 4, AX


JMP start