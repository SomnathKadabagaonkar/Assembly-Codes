
 section .data
  msg1 db "Enter 2nd String  : ",0
  msg  db " Enter 1st String : ",0
  msg2  db "Entered String  %s",10,0
  msg3 db "Length Of string %d",10,0
  msg4 db "Concatinated String %s",10,0
  msg5 db "String Are Equal",0
  msg6 db "String Are not equal",0
fmt db "%s",0

section .bss
	str1 resq 100
	str2 resq 100
	result resq 100

section .text
	global main
	extern printf,scanf,strlen,strcpy,strcat,strcmp

main:
	push rbp
	mov rbp,rsp

        mov rdi,msg
        xor eax,eax
        call printf

        mov rdi,fmt
        mov rsi,str1
        xor eax,eax
        call scanf

	mov rdi,msg1
	xor eax,eax
	call printf

	mov rdi,fmt
	mov rsi,str2
	xor eax,eax
        call scanf
      
       ;String Display

	mov rdi,msg2
 	mov rsi,str1
	xor eax,eax
	call printf

      ;String length
 
        mov rdi,str1
	call strlen

	mov esi,eax
	mov rdi,msg3
	xor eax,eax
	call printf

      ;String Concatination

	mov rdi,result
	mov rsi,str1
	call strcpy

	mov rdi,result
	mov rsi,str2
	call strcat

	mov rdi,msg4
	mov rsi,result
	xor eax,eax
	call printf

      ;String  Compare

	mov rdi,str1
	mov rsi,str2
	call strcmp

	cmp eax,0
	je equal

	mov rdi,msg6
	jmp display

 equal:
	mov rdi,msg5

 display:
	xor eax,eax
	call printf

mov eax,0
leave
ret	