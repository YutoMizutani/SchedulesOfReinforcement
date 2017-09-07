; 
;   FR_written_in_NASM.asm
; 
;   Created by Yuto Mizutani on 2017/09/07.
;   Copyright (c) 2017 Yuto Mizutani.
;  
;   This software is released under the MIT License.
;   https://github.com/YutoMizutani/SchedulesOfReinforcement/blob/master/LICENSE
;

section .data
	trueStr db "true"
		.len equ	$ - trueStr
	falseStr db "false"
		.len equ	$ - falseStr

section .text
	global	start

; Call a Subroutine
start:
	mov		rax, 10 ; numOfResp ; 10
	mov		rbx, 5 ; value ; 5 
	call	.decisionFR
    jmp		.end

; Subroutine definition in NASM
.decisionFR:
    mov		rdx, 0  ; initialize
    div		rbx 	; rax / rbx -> rax ...rdx
	cmp		rdx, 0  ; rdx == 0 ? jz : jnz
	jz		.true
	jnz		.false
    
.true:
    mov     rax, 0x2000004 ; write
    mov     rdi, 1 ; stdout
    lea     rsi, [rel trueStr]
    mov     rdx, trueStr.len
    syscall
    ret
    
.false:
	mov		rax, 0x2000004 ; write
	mov     rdi, 1 ; stdout
    lea		rsi, [rel falseStr]
    mov		rdx, falseStr.len
    syscall
    ret
    
.end:
    mov		rax, 0x2000001      ; System call number for exit = 1
    mov		rdi, 0              ; Exit success = 0
    syscall                 ; Invoke the kernel
