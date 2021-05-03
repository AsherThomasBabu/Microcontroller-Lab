;Write a program to copy the value 50h into RAM memory locations 40h to 45h using register indirect addressing mode

ORG 0000H
    MOV R0,#5
RPT:MOV R1,#40H
    MOV @R1,#50H
    INC R1
    DJNZ R0,RPT
    
