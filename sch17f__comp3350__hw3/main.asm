;Author: Ash Searle
;Username: kss0024
;Homework #3

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
	input byte  5,0Ah,3,6,0Ch
	output byte lengthof input DUP(?)
	shift dword 3

.code
	main proc
		
		;mov esi, 0							; current index
		;mov ebx, shift
		;mov ecx, lengthof input				; counter == input[]
		;L1:
		;	mov al, input[esi]				; get a character from source
		;	mov output[ebx], al				; store it in the target
			
		;	inc esi							; move to next character in output[]
		;	inc ebx
		;loop L1

		mov eax, 0
		mov ebx, 0
		mov ebx, lengthof input				; length of input
		sub ebx, shift						; length of input - shift
		mov esi, 0
		mov ecx, shift
		L2:
			mov al, input[ebx]				; get first runoff character from source
			mov output[esi], al				; store it in begining of target
		
			inc esi
			inc ebx							; move to next character in input[]
		loop L2


		
		invoke ExitProcess, 0
	main endp
end main