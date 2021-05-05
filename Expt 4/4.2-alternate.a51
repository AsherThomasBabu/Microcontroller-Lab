ORG 00h
MOV R0, #0Fh					
LOOP1:							

	MOV DPTR, #9000h			
	MOV A, R0					
	MOV R1, A					

	LOOP2:						

		MOVX A, @DPTR			
		MOV R2, A				
		INC DPTR				
		MOVX A, @DPTR			

		SUBB A, R2				

		JC Continue2			
								
		SwapNumbers:
			MOVX A, @DPTR		
			XCH A, R2			
								
			MOVX @DPTR, A		
			DEC DPL				
			MOV A, R2			
			MOVX @DPTR, A		

			INC DPTR			

	Continue2: DJNZ R1, LOOP2	

Continue1: DJNZ R0, LOOP1		

Here: SJMP Here		
END