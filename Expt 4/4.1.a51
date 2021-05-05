; Write an ALP to sort an array of N numbers in ascending order.

ORG 0000H
    MOV R7,#4
LOOP1: MOV R0,#40H
    MOV R6,#04
    LOOP:MOV A,@R0
    INC R0
    MOV 50H,@R0
    CJNE A,50H,NEXT
    SJMP DOWN
    NEXT:JC DOWN
    MOV @R0,A
    DEC R0
    MOV @R0,50H
DOWN: DJNZ R6,LOOP
    DJNZ R7,LOOP1
END