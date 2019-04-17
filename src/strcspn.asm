[BITS 64]

global strcspn
section .text

strcspn:
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
    je end
    inc RCX
    jmp findByte

findByte:
    cmp BYTE[RSI + RDX], AL
    je end
    cmp BYTE[RSI + RDX], 0
    je init
    inc RDX
    jmp findByte

end:
    mov RAX, R8
    mov RSP, RBP
    pop RBP
    ret