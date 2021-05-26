; 1.Write an ALP for hexadecimal to decimal number conversion.

ORG 0000H

    SJMP 30H
    ORG 30H
    MOV DPTR, #9000H 
    MOVX A, @DPTR
    MOV B, #10
    DIV AB
    INC DPTR
    XCH A, B
    MOVX @DPTR, A 
    XCH A, B 
    MOV B, #10
    DIV AB
    INC DPTR
    XCH A, B 
    MOVX @DPTR, A 
    XCH A, B
    INC DPTR
    MOVX @DPTR, A  ; Final data stored in locations 9001 - 9003H

HERE: SJMP HERE
END

; 1. Move the hex data to be converted to accumulator.
; 2. Move 10 to B register and divide with A reg to convert to ascii value.
; 3. Store the converted LSB value in r7. 
; 4. Repeat the step 2 to obtain the converted MSB
; 5. Store the same in r6.