section .data
    digit db 0,10

section .text
    global _start

_start:
    push 4
    push 8
    push 7

    pop rax
    call printRAXDigit
    pop rax
    call printRAXDigit
    pop rax
    call printRAXDigit

    mov eax, 60
    mov rdi, 0
    syscall

printRAXDigit:
    add rax, 48
    mov [digit], al
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 2
    syscall
    ret
