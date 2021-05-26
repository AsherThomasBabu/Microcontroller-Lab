;Write a program to subtract 2 numbers in 2 different memory locations and save the result in another location

ORG 0000H
	MOV R1, #50H
	MOV R2, #5FH
	
	MOV A,R1
	ADD A,R2
	MOV 75H,A	;Sum of R1, R2 stored in 75H