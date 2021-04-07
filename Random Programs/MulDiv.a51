ORG 0000H
	MOV R1, #22H
	MOV R2, #4BH
	
	MOV A,R1
	MOV B,R2
	MUL AB
	MOV R3,A	;Lower Order of the Product of R1, R2 stored in R3
	MOV R4,B	;Higher Order of the Product of R1, R2 stored in R4

	MOV A,R1
	MOV B,R2
	DIV AB
	MOV R3,A	;Quotient of R1, R2 stored in R3
	MOV R4,B	;Remainder of R1, R2 stored in R4
	
END