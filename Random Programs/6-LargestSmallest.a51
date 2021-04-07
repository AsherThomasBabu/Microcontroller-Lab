ORG 0000H
	mov r0, #9
	mov dptr, #8200H
	movc a, @a+dptr
	mov b, a
back: inc dptr
	clr a
	movc a, @a+dptr
	cjne a,b, check
check:  JNC next
	mov b,a
next: djnz r0,back
	mov r4, b		;Smallest Number
	   
	mov r0, #9
	mov dptr, #8200H
	movc a, @a+dptr
	mov b, a
back: inc dptr
	clr a
	movc a, @a+dptr
	cjne a,b, check
check:  JC next
		mov b,a
next: djnz r0,back
	   mov r5, b		;Largest Number
		
org 8200h
	db 10h,22h,50h,70h,90h,11h,21h,53h,91h,76h
		
END