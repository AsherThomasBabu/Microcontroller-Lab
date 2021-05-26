; 3.Write an ALP for ASCII to decimal conversion and vice versa.


ORG 0000H
    MOV DPTR, #9000H
    MOVX A,@DPTR
    SUBB A,#30H
    INC DPTR
    MOVX @DPTR,A
END

; 1. Move the ASCII character to be converted to accumulator. 
; 2. then subtract 30h.
; 4. Store the converted hexadecimal number.