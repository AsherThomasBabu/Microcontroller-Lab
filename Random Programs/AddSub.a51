ORG 0000H
	MOV R1, #22H
	MOV R2, #4BH
	
	MOV A,R1
	ADD A,R2
	MOV R3,A	;Sum of R1, R2 stored in R3
	
	MOV A, R1
	SUBB A,R2
	MOV R4,A	;Difference of R1, R2 stored in R4
	
END