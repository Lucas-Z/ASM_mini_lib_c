[BITS 64]

global strstr
section .text

strstr:
    push RBP
    mov RBP, RSP
    mov RAX, 0
    mov RCX, 0
    mov R8, 0
    jmp loopString

reset:
    inc RDI
    mov RCX, 0
    jmp loopString

loopString:
    mov AL, BYTE[RSI]
    cmp BYTE[RDI], AL
    je isSame
    cmp BYTE[RDI + RCX], 0
    je notFound
    cmp AL, 0
    je endFound
    inc RDI
    jmp loopString


isSame:
    mov AL, BYTE[RSI + RCX]
    cmp AL, 0
    je endFound
    cmp BYTE[RDI + RCX], AL
    jne reset
    inc RCX
    jmp isSame

notFound:
    mov RAX, 0
    mov RSP, RBP
    pop RBP
    ret

endFound:
    mov RAX, RDI
    mov RSP, RBP
    pop RBP
    ret