[BITS 64]

global strcmp
section .text

strcmp:
    push RBP
    mov RBP, RSP
    mov RCX, 0

loopString:
    mov AL, BYTE[RDI + RCX]
    cmp BYTE[RSI + RCX], AL
    jne end
    cmp AL, 0
    je end
    inc RCX
    jmp loopString

end:
    sub AL, BYTE[RSI + RCX]
    movsx RAX, AL
    mov RSP, RBP
    pop RBP
    ret