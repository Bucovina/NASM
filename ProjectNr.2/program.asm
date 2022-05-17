segment .data
    formatin: db "%d", 0
    formatout: db "%d", 10, 0 

section .bss
    a resq 1
    b resq 1
    c resq 1
    d resq 1 
    sum resq 1
    prod resq 1
    rez resq 1

segment .text
    global main
    extern printf
    extern scanf

main:
    push rbp

    mov rax, 0
    mov rsi, a
    mov rdi, formatin
    call scanf

    mov rax, 0
    mov rsi, b
    mov rdi, formatin
    call scanf

    mov rax, 0
    mov rsi, c
    mov rdi, formatin
    call scanf

    mov rax, 0
    mov rsi, d
    mov rdi, formatin
    call scanf

    mov rax, [a]
    add rax, [b]
    add rax, [c]
    mov [sum], rax

    mov rax, [b]
    mov rbx, [d]
    mul rbx
    mov [prod], rax

    xor rdx, rdx
    mov rax, [sum]
    mov rbx, [prod]
    div rbx
    mov [rez], rax

    ;mov rax, 0
    ;mov rsi, [sum]
    ;mov rdi, formatout
    ;call printf

    ;mov rax, 0
    ;mov rsi, [prod]
    ;mov rdi, formatout
    ;call printf

    mov rax, 0
    mov rsi, [rez]
    mov rdi, formatout
    call printf

    mov rax, 0
	pop rbp
	ret
