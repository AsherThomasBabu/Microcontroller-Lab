; 3.Write an ALP for ASCII to decimal conversion and vice versa.


ORG 0000H
    SJMP 30h
    ORG 30h
    MOV R1, #50H
    MOV A, @R1
    CLR C
    SUBB A, #41H
    MOV A, @RI
    JC SKIP
    CLR C
    SUBB A, #07H
    CLRC
    SUBB A, # 30H
END

; 1. Move the ASCII character to be converted to accumulator. 
; 2. If character is greater than 41h (for A-F), then subtract 07h & 30h.
; 3. Else (i.e., for 0-9) subtract only 30h.
; 4. Store the converted hexadecimal number.