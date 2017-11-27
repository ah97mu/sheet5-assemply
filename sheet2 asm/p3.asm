.586
.MODEL FLAT
.STACK 4096
INCLUDE IO.H

.DATA

	num1 DWORD ?
	num2 DWORD ?
	y BYTE "The PIRIMETR IS : ",0
	x BYTE "Enter width of the rectangle ",0
	xx BYTE "Enter Length of the rectangle",0
	
	COUNTER DWORD  ?
	stor BYTE 11 DUP (?)
	sum BYTE 11 DUP (?)
	
.CODE
	MainProc PROC
	
	input x,stor ,40
	atod stor
	imul eax ,2
	mov num1 ,eax
	
	input x,stor,40
	atod stor
	imul eax,2
	
	add eax ,num1
	
	dtoa sum,eax
	output y,sum
	
	mov eax ,0
	ret
	MainProc ENDP
END
