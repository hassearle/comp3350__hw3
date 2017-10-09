;Author: Ash Searle
;Username: kss0024
;Homework #3

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	input byte 1,2,3
	output byte lengthof input DUP(?)
	shift byte 3

.code
	main proc
		mov eax, 0
		mov eax, sizeof input
		
		mov ecx, lengthof input 
		L:


		loop L
		
		
		invoke ExitProcess, 0
	main endp
end main