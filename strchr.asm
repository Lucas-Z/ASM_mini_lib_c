[BITS 64]

global strchr
section .text

strchr:
    push RBP
    mov RBP, RSP
    mov RCX, 0

loopString:
    mov AL, BYTE[RDI + RCX]
    cmp SIL, AL
    je goodend
    cmp AL, 0
    je badend
    inc RCX
    jmp loopString

badend:
    mov RAX, 0
    mov RSP, RBP
    pop RBP
    ret

goodend:
    add RDI, RCX
    mov RAX, RDI
    mov RSP, RBP
    pop RBP
    ret