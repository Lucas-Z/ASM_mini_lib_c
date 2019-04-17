[BITS 64]

global strcasecmp
section .text

strcasecmp:
    push RBP
    mov RBP, RSP
    mov RCX, 0
    mov RAX, 0

setS1min:
    mov AL, BYTE[RDI + RCX] 
    cmp AL, 90
    jle ismajS1
    jmp setS2min

setS2min:
    mov R8B, BYTE[RSI + RCX] 
    cmp R8B, 90
    jle ismajS2
    jmp isSame

nextchar:
    inc RCX
    mov AL, 0
    mov R8B, 0
    jmp setS1min

ismajS1:
    cmp AL, 65
    jl setS2min
    add AL, 32
    jmp setS2min

ismajS2:
    cmp R8B, 65
    jl isSame
    add R8B, 32
    jmp isSame

isSame:
    cmp R8B, AL
    jne end
    cmp AL, 0
    jne nextchar
    mov RAX, 0
    jmp end

end:
    sub AL, R8B
    movsx RAX, AL
    mov RSP, RBP
    pop RBP
    ret