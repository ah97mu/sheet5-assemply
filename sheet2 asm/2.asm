.586
.MODEL FLAT
.STACK 4096
INCLUDE io.h

.DATA

	num1 DWORD ?
	num2 DWORD ?
	num3 DWORD ?

	x BYTE "HI ASd",0
	val BYTE "ENTER THE NUM",0
	ll BYTE "reaul is",0
	stor BYTE 40 DUP(?)
	z BYTE 11 DUP(?)

.CODE
	MainProc Proc
	
	INPUT val,stor ,40
	atod stor
	mov num1,eax

	INPUt val,stor ,40
	atod stor
	add num1 ,eax
	imul eax ,2

	mov num1,eax
	
	INPUT val, stor ,40 
	atod stor
	add eax ,num1

	



	add eax ,num1


	dtoa z ,eax

	output ll,z




	mov eax,0
	ret
	MainProc ENDP

END