section .data
    text db "Hello World",0x0a ; <text define bytes (string), \n>

section .text
    global _start ; Cria a flag _start (Obrigatório!)

printHello:
    mov eax, 1
    mov rdi, 1
    mov rsi, text
    mov rdx, 14
    syscall

    jmp printHello

_start:
    call printHello

    mov rax, 60
    mov rdi, 0
    syscall
