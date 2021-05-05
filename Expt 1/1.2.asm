;Write a program to add 2 numbers in location 50h and 5Fh and store the result in 75h

ORG 0000H
	MOV R1, #50H
	MOV R2, #5FH
	
	MOV A,R1
    SUBB A,R2
	MOV 75H,A	;Difference of R1, R2 stored in 75H