 ORG 0000h
	 MOV DPTR,#42h	;This part of the code tranfers data from 42H in Code Memory to 6CH of Data Memory
	 CLR A
	 MOVC A,@A+DPTR
	 MOV 6CH,A
	 
	 XCH A, 43H	;This part of the code exchanges data between Accumlator and 43H 
	 
ORG 42h
	db 7fh, 22h, 1dh
END
		