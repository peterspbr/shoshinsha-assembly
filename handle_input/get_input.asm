section .data
    text1 db "Hello, what is your name? "
    text2 db "Hello, "

section .bss
    name resb 16

section .text
    global _start ; Cria a flag _start (Obrigatório!)

_start:
    call printText1
    call getName
    call printText2
    call printName

    mov rax, 0x3c
    mov rdi, 0
    syscall

getName:
    mov rax, 0
    mov rdi, 0
    mov rsi, name
    mov rdx, 16
    syscall
    ret

printText1:
    mov rax, 1
    mov rdi, 1
    mov rsi, text1
    mov rdx, 26
    syscall
    ret

printText2:
    mov rax, 1
    mov rdi, 1
    mov rsi, text2
    mov rdx, 7
    syscall
    ret

printName:
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 16
    syscall
    ret
