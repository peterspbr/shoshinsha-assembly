section .data
    text1 db "What is your name? ",0x0
    text2 db "Hello ",0x0
    text3 db "Nice to meet you!",0x0a,0x0

section .bss
    name resb 16

section .text
    global _start

_start:
    mov rax, text1
    call print
    call getInput
    mov rax, text2
    call print
    mov rax, name
    call print
    mov rax, text3
    call print

    mov rax, 0x3c
    mov rdi, 0x0
    syscall

print:
    push rax
    mov rbx, 0x0
    
printLoop:
    inc rax
    inc rbx
    mov cl, [rax]
    cmp cl, 0x0
    jne printLoop

    mov rax, 0x1
    mov rdi, 0x1
    pop rsi
    mov rdx, rbx
    syscall
    ret

getInput:
    mov rax, 0x0
    mov rdi, 0x0
    mov rsi, name
    mov rdx, 16
    syscall
    ret
    