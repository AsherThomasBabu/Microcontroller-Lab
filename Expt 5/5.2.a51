; 2.Write an ALP for  decimal  to hexadecimal conversion.

ORG 0000H

    SJMP 30H
    ORG 30H
    MOV DPTR, #40H
    MOVX A, @DPTR 
    ANL A, #0F0H
    SWAP A
    MOV B, #0AH
    MUL AB
    MOV R1, A
    MOVX A, @DPTR
    ANL A, #0FH
    ADD A, R1
    INC DPTR
    MOVX@DPTR, A

HERE:SJMP HERE
END

; 1. Move the decimal data to be converted from external memory 40h to accumulator
; 2. AND A reg. with Ofth and obtain the upper MSB of the decimal digit and swap the LSB and MSB of accumulatee to being the same to units place. 
; 3. Move Oah to B register and multiply with A reg to convert to hex value, store the converted tensvalue in rl.
; 4. Get the LSB of the decimal number and add to the converted tens value 
; 5. Point to the next memory location and store the result (hexadecimal)