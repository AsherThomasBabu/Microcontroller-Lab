; 2.1 Write an ALP to find the square of 8 bit data
; Number is stored at location #30H, square is stored at #31H and #32H
ORG 0000H

    MOV R0, #30H
    MOV A, @R0
    MOV B, @R0
    MUL AB
    INC R0 
    MOV @R0, A
    INC R0
    MOV @R0, B

END