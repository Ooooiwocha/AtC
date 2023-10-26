section .data
    format db "%c", 0

section .bss
    c resb 1       ;

section .text
    global main

main:
    sub rsp, 8
    lea rsi, [rel c]
myloop:
    mov rax, 0
    mov rdi, 0
    mov rdx, 1
    syscall
    cmp byte [rel c], 0x0A
    je add_pp
    mov rax, 1
    mov rdi, 1
    mov rdx, 1
    syscall
    jmp myloop
add_pp:
    mov rax, 1
    mov rdi, 1
    mov rdx, 1
    mov byte [rel c], 'p'
    syscall
    syscall
    mov byte [rel c], 0x0A
    syscall
done:
    add rsp, 8
    mov rax, 60
    xor rdi, rdi
    syscall
