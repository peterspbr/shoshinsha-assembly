section .data
    text db "Hello World",0x0a ; <text define bytes (string), \n>

section .text
    global _start ; Cria a flag _start (Obrigatório!)

_start:
    call printHello

    mov rax, 0x3c
    mov rdi, 0
    syscall

printHello:
    mov eax, 0x1 ; ID (sys_write)
    mov edi, 0x1 ; Standard output
    mov rsi, text
    mov rdx, 12 ; The lenght of the text
    syscall

    ret
