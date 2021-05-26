;Write an assembly language program(ALP) to divide two 8 bit numbers stored in two adjacent memory locations and store the result in two adjacent memory locations.

ORG 0000H
	MOV DPTR, #4200H ;Initial location of the input
    MOV R0, #42H ;Initial location of the output
	CLR A 
			MOVC A, @A+DPTR
			MOV B,A
			INC DPTR
			CLR A
	    	MOVC A, @A+DPTR
			DIV AB 

            MOV @R0,A  ; Quotient answer stored in First Location
            INC R0
            MOV @R0, B ; Remainder answer stored in Adjacent Loaction
ORG 4200H
	DB 10H, 12H

END
			