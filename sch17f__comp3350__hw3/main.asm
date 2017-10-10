;Author: Ash Searle
;Username: kss0024
;Homework #3

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	input byte 4,06h,8,0Ch
	output byte lengthof input DUP(?)
	shift dword 2

.code
	main proc
		mov esi, 0							; current index
		mov ebx, shift						; index + shift
		mov ecx, lengthof input				; counter == input[]
		L:
			mov al, input[esi]				; get a character from source
			mov output[ebx], al				; store it in the target
			inc esi							; move to next character in input[]
			inc ebx							; move to next character in output[]
		loop L
		
		
		
		
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		; loop for testing
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		mov esi, 0
		mov ecx, lengthof input
		A:
			mov al, output[esi]				; get a character from source
			inc esi							; move to next character
		loop A
		
		invoke ExitProcess, 0
	main endp
end main