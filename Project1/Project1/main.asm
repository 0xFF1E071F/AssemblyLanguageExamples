; 

ExitProcess PROTO

.DATA



.code
main PROC
	mov RBX, 0
	mov RCX, 999
	mov RDX, 0

LOOP1:
	MOV ESI, 5
	MOV RDX,0
	MOV RAX,RCX
	DIV ESI
	CMP RDX,0
	JZ SUMA
	MOV ESI, 3
	MOV RDX, 0
	MOV RAX, RCX
	DIV ESI
	CMP RDX,0
	JNZ ENDLOOP
SUMA:
	ADD RBX, RCX
ENDLOOP:
	LOOP LOOP1
		
	call ExitProcess
main ENDP

END