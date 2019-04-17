[BITS 64]

global rindex
section .text

rindex:
    push RBP
    mov RBP, RSP
    mov RCX, 0

strlen:
    cmp BYTE[RDI + RCX], 0
    je loopString
    inc RCX
    jmp strlen

loopString:
    mov AL, BYTE[RDI + RCX]
    cmp SIL, AL
    je goodend
    cmp RCX, 0
    je badend
    dec RCX
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