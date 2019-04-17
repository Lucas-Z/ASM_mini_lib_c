[BITS 64]

global strpbrk
section .text

strpbrk:
    push RBP
    mov RBP, RSP
    mov RCX, 0
    mov R8, 0

init:
    mov RDX, 0
    jmp loopString

loopString:
    mov AL, BYTE[RDI + RCX]
    mov R8, RCX
    cmp AL, 0
    je notFound
    inc RCX
    jmp findByte

findByte:
    cmp BYTE[RSI + RDX], AL
    je endFound
    cmp BYTE[RSI + RDX], 0
    je init
    inc RDX
    jmp findByte

notFound:
    mov RAX, 0
    mov RSP, RBP
    pop RBP
    ret

endFound:
    add RDI, R8
    mov RAX, RDI
    mov RSP, RBP
    pop RBP
    ret