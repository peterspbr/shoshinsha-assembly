section .data
    text db "Hello World",0x0a ; <text define bytes (string), \n>

section .text
    global _start ; Cria a flag _start (Obrigatório!)

_start:
    mov rax, 0x1 ; Move o valor 1 para o registrador eax (Acumulador)
    mov rdi, 0x1 ; Move o valor 1 para o registrador rdi ((Destination Index)
    mov rsi, text ; Move o texto "Hello World" para o registrador rsi (Source Index)
    mov rdx, 0x0e ; Move o valor 14 para o registrador rdx. (Registrador de dados). 14 é o tamanho do texto que por enquanto está estático  
    syscall ; Realiza um syscall

    mov rax, 0x3c
    mov rdi, 0
    syscall
