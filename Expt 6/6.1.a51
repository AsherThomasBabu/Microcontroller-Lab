; 1.Write an ALP to multiply two numbers using shift and add method
; two number at location 40H and 41H, After multiplying the result will be stored at location 42H and 43H.
ORG 0000H

    MOV R0,#0
    MOV B,40H
    MOV R2,41H
    MOV R3,#8
LOOP: CLR C
    MOV A,R0
    JNB B.0,SHIFT
    ADD A,R2
SHIFT: RRC A
    MOV R0,A
    MOV A,B
    RRC A
    MOV B,A
    DJNZ R3,LOOP
    MOV 42H,R0
    MOV 43H,B

END