; 2.2 Write an ALP to find the cube of 8 bit data
; Initial data is stored at #30H and the cube of that number is shown at #40H

ORG 0000H

    MOV R0, #30H
    MOV R1, #40H
    MOV A, @R0
    MOV B, @R0
    MUL AB
    MOV R2, B
    MOV B, @R0
    MUL AB
    MOV R3, B
    MOV@R1, A
    MOV A, R2 
	MOV B, @R0
    MUL AB
    ADD A, R3
    JNC LOOP
    INC B
LOOP:INC R1
    MOV @R1, A
    MOV A, B 
	INC R1
    MOV @R1, A
    
END