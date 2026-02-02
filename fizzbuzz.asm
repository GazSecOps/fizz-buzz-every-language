section .text
global _start

_start:
    mov ecx, 1        ; i = 1

loop_start:
    mov eax, ecx
    xor edx, edx
    mov ebx, 15
    div ebx           ; eax = i / 15, edx = i % 15
    test edx, edx
    jz print_fizzbuzz

    mov eax, ecx
    xor edx, edx
    mov ebx, 3
    div ebx           ; eax = i / 3, edx = i % 3
    test edx, edx
    jz print_fizz

    mov eax, ecx
    xor edx, edx
    mov ebx, 5
    div ebx           ; eax = i / 5, edx = i % 5
    test edx, edx
    jz print_buzz

    jmp print_number

print_fizzbuzz:
    mov ecx, fizzbuzz_str
    mov edx, fizzbuzz_len
    jmp print_and_continue

print_fizz:
    mov ecx, fizz_str
    mov edx, fizz_len
    jmp print_and_continue

print_buzz:
    mov ecx, buzz_str
    mov edx, buzz_len
    jmp print_and_continue

print_number:
    mov eax, ecx
    call print_int
    jmp continue_loop

print_and_continue:
    mov eax, 4        ; sys_write
    mov ebx, 1        ; stdout
    ; ecx already set
    ; edx already set
    int 0x80
    jmp continue_loop

print_int:
    ; Print integer in eax
    ; Uses recursion
    push ebp
    mov ebp, esp
    cmp eax, 0
    jge print_positive
    neg eax
    push '-'
    mov ecx, esp
    mov edx, 1
    mov eax, 4
    mov ebx, 1
    int 0x80
    add esp, 4

print_positive:
    mov ebx, 10
    mov ecx, esp

convert_loop:
    xor edx, edx
    div ebx
    add edx, '0'
    dec ecx
    mov [ecx], dl
    test eax, eax
    jnz convert_loop

    mov edx, esp
    sub edx, ecx
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov esp, ebp
    pop ebp
    ret

continue_loop:
    ; Print newline
    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    inc ecx
    cmp ecx, 101
    jl loop_start

    ; Exit
    mov eax, 1        ; sys_exit
    xor ebx, ebx
    int 0x80

section .data
    fizz_str db "Fizz", 0
    fizz_len equ $ - fizz_str - 1
    buzz_str db "Buzz", 0
    buzz_len equ $ - buzz_str - 1
    fizzbuzz_str db "FizzBuzz", 0
    fizzbuzz_len equ $ - fizzbuzz_str - 1
    newline db 10
