		.586
		.MODEL FLAT
		.STACK 4096
		INCLUDE IO.H

		.DATA

			grad BYTE "PLZ Enter the Grade ",0
			ResSum BYTE " The Sum of The Grades IS :- ",0
			ResAv BYTE " The Averag of The Grades IS :- ",0
	
			x1 DWORD ?
			x2 DWORD ?
			x3 DWORD ?
			x4 DWORD ?

			sum BYTE 11 DUP (?)
			av BYTE 11 DUP (?)
			stor BYTE 11 DUP (?)
	
 
		.CODE
		MainProc PROC
			input grad,stor,40
			atod stor
			mov  x1,eax
	
			input grad,stor,40
			atod stor
			mov x2,eax
	
			input x3,stor,40
			atod stor
			mov x3,eax
	
			input grad,stor,40
			atod stor
			mov x4,eax
	
			add eax,x1
			add eax,x2
			add eax,x3
	
			dtoa sum,eax	

			output ResSum,sum,0


			add eax,2
			mov bx,4
			cwd

			idiv bx


	
	
	
		
			dtoa av,eax
	
	
			output ResAv,av,0
	
	
			mov eax,0
			ret
			MainProc ENDP
		END