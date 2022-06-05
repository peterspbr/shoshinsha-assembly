section .data
    text db "Hello World. My name is Peter! Nice to meet you",10,0

section .text
    global _start

_start:
    mov rax, text
    call print

    mov rax, 60
    mov rdi, 0
    syscall

print:
    push rax
    mov rbx, 0
    
printLoop:
    inc rax
    inc rbx
    mov cl, [rax]
    cmp cl, 0
    jne printLoop

    mov rax, 1
    mov rdi, 1
    pop rsi
    mov rdx, rbx
    syscall
    ret
