ORG 0000H
	MOV DPTR, #4200H ;Initial location of the array
	MOV R0, #3  ;Length of the array-1
	CLR A 
			MOVC A, @A+DPTR
			MOV R1,A
			INC DPTR
			CLR A
	RPT:	MOVC A, @A+DPTR
			ADD A, R1
			MOV R1,A  ; Final answer stored in R1
			CLR A
			DJNZ R0,RPT
	
ORG 4200H
	DB 10H, 12H, 15H, 0FH

END